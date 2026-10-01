
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |phlox/ |touch-control/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {} $ 'comp-container
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-container (store)
            container ({})
              text $ {} (:text |DEMO)
                :position $ [] 100 100
                :style $ {} $ :fill (hslx 0 0 80)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'phlox.schema/PhloxElement)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require $ phlox.core :refer $ [] hslx text container
    'app.config $ %{} 'FileEntry
      :defs $ {} $ 'site
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/phlox/) (:title |Phlox) (:icon |http://cdn.tiye.me/logo/quamolit.png) (:storage-key |phlox)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store schema/store
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and dev? $ match op
                (:states _ _) false
                _ true
              js/console.log |dispatch! op
            let
                op-id $ decode-map-as (nanoid) 'String
                op-time $ decode-map-as (js/Date.now) 'Number
              reset! *store $ updater @*store op op-id op-time
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            onFontReady "|Josefin Sans" $ fn () $ render-app!
            add-watch *store :change $ fn (store prev) (render-app!)
            render-control!
            start-control-loop! 8 on-control-event
            println "|App Started"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (clear-phlox-caches!) (remove-watch *store :change)
                add-watch *store :change $ fn (store prev) (render-app!)
                render-app!
                replace-control-loop! 8 on-control-event
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! (? arg)
            render! (comp-container @*store) dispatch! $ or arg $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            phlox.core :refer $ [] render! clear-phlox-caches! on-control-event
            app.comp.container :refer $ [] comp-container
            app.schema :as schema
            phlox.config :refer $ [] dev?
            |nanoid :refer $ [] nanoid
            app.updater :refer $ [] updater
            |./font-ready.mjs :refer $ [] onFontReady
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            touch-control.core :refer $ [] render-control! start-control-loop! replace-control-loop!
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} (:tab :drafts) (:x 0) (:keyboard-on? false) (:counted 0)
              :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:add-x)
                update store :x $ fn (raw-x)
                  hint-fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Number
                  let
                      x $ decode-map-as raw-x 'Number
                    if (> x 10) 0 $ + x 1
              (:tab t) (assoc store :tab t)
              (:toggle-keyboard)
                update store :keyboard-on? $ fn (value)
                  hint-fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Bool
                  not $ decode-map-as value 'Bool
              (:counted)
                update store :counted $ fn (value)
                  hint-fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Number
                  inc $ decode-map-as value 'Number
              (:states cursor s) (update-states store cursor s)
              (:hydrate-storage d)
                decode-map-as d $ :: 'Map 'Tag 'Dynamic
              _ $ do (eprintln "|unknown op" op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Enum 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ phlox.cursor :refer $ [] update-states
