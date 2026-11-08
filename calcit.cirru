
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
          :schema $ quote $ Fn app.schema/Store (-> phlox.schema/PhloxElement)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require $ phlox.core :refer $ hslx text container
    'app.config $ %{} 'FileEntry
      :defs $ {} $ 'site
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:dev-ui |http://localhost:8100/main.css) (:release-ui |http://cdn.tiye.me/favored-fonts/main.css) (:cdn-url |http://cdn.tiye.me/phlox/) (:title |Phlox) (:icon |http://cdn.tiye.me/logo/quamolit.png) (:storage-key |phlox)
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store schema/store
          :examples $ []
          :schema $ quote $ Ref app.schema/Store
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
            , &unit
          :examples $ []
          :schema $ quote $ Fn app.schema/Op (-> Unit) (:features :js-ffi)
        'dispatch-event! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch-event! (event)
            match (schema/decode-op event)
              (:some op) (dispatch! op)
              (:none) (eprintln "|unknown op" event)
            , &unit
          :examples $ []
          :schema $ quote $ Fn AnyEnum (-> Unit) (:features :js-ffi) (:open :decode)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (; js/console.log PIXI)
            if dev? $ load-console-formatter!
            onFontReady "|Josefin Sans" $ fn () $ render-app!
            add-watch! *store :change $ fn (store prev) (render-app!)
            render-control!
            start-control-loop! 8 on-control-event
            println "|App Started"
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (clear-phlox-caches!) (remove-watch! *store :change)
                add-watch! *store :change $ fn (store prev) (render-app!)
                render-app!
                replace-control-loop! 8 on-control-event
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (comp-container @*store) dispatch-event! $ {}
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            phlox.core :refer $ render! clear-phlox-caches! on-control-event
            app.comp.container :refer $ comp-container
            app.schema :as schema
            phlox.config :refer $ dev?
            |nanoid :refer $ nanoid
            app.updater :refer $ updater
            |./font-ready.mjs :refer $ onFontReady
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            touch-control.core :refer $ render-control! start-control-loop! replace-control-loop!
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op (:add-x) (:tab Tag) (:toggle-keyboard) (:counted)
            :states (List Dynamic) Dynamic
            :hydrate-storage app.schema/Store
          :examples $ []
          :schema $ quote EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store (:tab Tag) (:x Number) (:keyboard-on? Bool) (:counted Number)
            :states $ Map Dynamic Dynamic
            :cursor $ List Dynamic
          :examples $ []
          :schema $ quote StructDef
        'decode-op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-op (event)
            match event
              (:add-x)
                Option :some $ Op :add-x
              (:tab tab)
                Option :some $ Op :tab $ decode-map-as tab Tag
              (:toggle-keyboard)
                Option :some $ Op :toggle-keyboard
              (:counted)
                Option :some $ Op :counted
              (:states cursor data)
                Option :some $ Op :states
                  decode-map-as cursor $ List Dynamic
                  , data
              (:hydrate-storage data)
                Option :some $ Op :hydrate-storage $ decode-map-as
                  if (struct? data) (&struct:to-map data) data
                  , Store
              _ $ Option :none
          :examples $ []
          :schema $ quote $ Fn AnyEnum
            -> $ Option app.schema/Op
            :open :decode
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :tab :drafts :x 0 :keyboard-on? false :counted 0 :states ({}) :cursor $ []
          :examples $ []
          :schema $ quote app.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op _op-id _op-time)
            match op
              (:add-x)
                let
                    x $ :x store
                  assoc store :x $ if (> x 10) 0 $ + x 1
              (:tab tab) (assoc store :tab tab)
              (:toggle-keyboard)
                assoc store :keyboard-on? $ not $ :keyboard-on? store
              (:counted)
                assoc store :counted $ inc $ :counted store
              (:states cursor data)
                assoc store :states $ decode-map-as
                  assoc-in (:states store) (conj cursor :data) data
                  Map Dynamic Dynamic
              (:hydrate-storage stored) stored
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
