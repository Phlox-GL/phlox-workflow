
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-container (store)
              ; println "\"Store" store $ :tab store
              let
                  cursor $ []
                  states $ :states store
                container ({})
                  text $ {} (:text "\"DEMO")
                    :position $ [] 100 100
                    :style $ {}
                      :fill $ hslx 0 0 80
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require
            phlox.core :refer $ g hslx rect circle text container graphics create-list >>
            phlox.comp.button :refer $ comp-button
            phlox.comp.drag-point :refer $ comp-drag-point
            respo-ui.core :as ui
            memof.alias :refer $ memof-call
    |app.config $ %{} :FileEntry
      :defs $ {}
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:dev-ui "\"http://localhost:8100/main.css") (:release-ui "\"http://cdn.tiye.me/favored-fonts/main.css") (:cdn-url "\"http://cdn.tiye.me/phlox/") (:title "\"Phlox") (:icon "\"http://cdn.tiye.me/logo/quamolit.png") (:storage-key "\"phlox")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.config $ :require ("\"mobile-detect" :default mobile-detect)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote (defatom *store schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and dev? $ not= (nth op 0) :states
                js/console.log "\"dispatch!" op
              let
                  op-id $ nanoid
                  op-time $ js/Date.now
                reset! *store $ updater @*store op op-id op-time
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () (; js/console.log PIXI)
              if dev? $ load-console-formatter!
              -> (new FontFaceObserver "\"Josefin Sans") (.!load)
                .!then $ fn (event) (render-app!)
              add-watch *store :change $ fn (store prev) (render-app!)
              render-control!
              start-control-loop! 8 on-control-event
              println "\"App Started"
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (clear-phlox-caches!) (remove-watch *store :change)
                add-watch *store :change $ fn (store prev) (render-app!)
                render-app!
                replace-control-loop! 8 on-control-event
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! (? arg)
              render! (comp-container @*store) dispatch! $ or arg ({})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require ("\"pixi.js" :as PIXI)
            phlox.core :refer $ render! clear-phlox-caches! update-viewer! on-control-event
            app.comp.container :refer $ comp-container
            app.schema :as schema
            phlox.config :refer $ dev? mobile?
            "\"nanoid" :refer $ nanoid
            app.updater :refer $ updater
            "\"fontfaceobserver-es" :default FontFaceObserver
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
            touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {} (:tab :drafts) (:x 0) (:keyboard-on? false) (:counted 0)
              :states $ {}
              :cursor $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :add-x
                  update store :x $ fn (x)
                    if (> x 10) 0 $ + x 1
                (:tab t) (assoc store :tab t)
                (:toggle-keyboard) (update store :keyboard-on? not)
                (:counted) (update store :counted inc)
                (:states cursor s) (update-states store cursor s)
                (:hydrate-storage d) d
                _ $ do (eprintln "\"unknown op" op) store
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            [] phlox.cursor :refer $ [] update-states
