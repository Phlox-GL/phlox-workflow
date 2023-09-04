
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.4.10)
    :modules $ [] |memof/ |lilac/ |respo.calcit/ |respo-ui.calcit/ |phlox/ |touch-control/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1573356299931) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1615450365814) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1573356299931) (:by |rJG4IHzWf) (:text |comp-container)
              |r $ %{} :Expr (:at 1573356299931) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573662792335) (:by |rJG4IHzWf) (:text |store)
              |t $ %{} :Expr (:at 1574442738592) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1582367227989) (:by |rJG4IHzWf) (:text |;)
                  |T $ %{} :Leaf (:at 1574442742932) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1574442744071) (:by |rJG4IHzWf) (:text "|\"Store")
                  |r $ %{} :Leaf (:at 1574442745655) (:by |rJG4IHzWf) (:text |store)
                  |v $ %{} :Expr (:at 1574442779990) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574442779990) (:by |rJG4IHzWf) (:text |:tab)
                      |j $ %{} :Leaf (:at 1574442779990) (:by |rJG4IHzWf) (:text |store)
              |v $ %{} :Expr (:at 1583036824444) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1583036827332) (:by |rJG4IHzWf) (:text |let)
                  |L $ %{} :Expr (:at 1583036827630) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1583036827827) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036828777) (:by |rJG4IHzWf) (:text |cursor)
                          |j $ %{} :Expr (:at 1583036829493) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1583036830034) (:by |rJG4IHzWf) (:text |[])
                      |j $ %{} :Expr (:at 1583036831664) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036832446) (:by |rJG4IHzWf) (:text |states)
                          |j $ %{} :Expr (:at 1583036832651) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1583036833411) (:by |rJG4IHzWf) (:text |:states)
                              |j $ %{} :Leaf (:at 1583036834181) (:by |rJG4IHzWf) (:text |store)
                  |T $ %{} :Expr (:at 1574353986671) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1574353987962) (:by |rJG4IHzWf) (:text |container)
                      |L $ %{} :Expr (:at 1574353988241) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1574353988566) (:by |rJG4IHzWf) (:text |{})
                      |f $ %{} :Expr (:at 1622482568684) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1622482569490) (:by |rJG4IHzWf) (:text |text)
                          |j $ %{} :Expr (:at 1622482569714) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1622482570085) (:by |rJG4IHzWf) (:text |{})
                              |j $ %{} :Expr (:at 1622482583338) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1622482584666) (:by |rJG4IHzWf) (:text |:text)
                                  |j $ %{} :Leaf (:at 1629390855758) (:by |rJG4IHzWf) (:text "|\"DEMO")
                              |r $ %{} :Expr (:at 1622482586532) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1622482591230) (:by |rJG4IHzWf) (:text |:position)
                                  |j $ %{} :Expr (:at 1622482591491) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1622482591708) (:by |rJG4IHzWf) (:text |[])
                                      |j $ %{} :Leaf (:at 1622482592737) (:by |rJG4IHzWf) (:text |100)
                                      |r $ %{} :Leaf (:at 1622482593253) (:by |rJG4IHzWf) (:text |100)
                              |v $ %{} :Expr (:at 1622482596458) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1622482597298) (:by |rJG4IHzWf) (:text |:style)
                                  |j $ %{} :Expr (:at 1622482598983) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1622482599529) (:by |rJG4IHzWf) (:text |{})
                                      |j $ %{} :Expr (:at 1622482599966) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1622482603995) (:by |rJG4IHzWf) (:text |:fill)
                                          |j $ %{} :Expr (:at 1622482604319) (:by |rJG4IHzWf)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1622482605251) (:by |rJG4IHzWf) (:text |hslx)
                                              |j $ %{} :Leaf (:at 1622482605553) (:by |rJG4IHzWf) (:text |0)
                                              |r $ %{} :Leaf (:at 1622482605798) (:by |rJG4IHzWf) (:text |0)
                                              |v $ %{} :Leaf (:at 1622482618872) (:by |rJG4IHzWf) (:text |80)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1573356292089) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1573356292089) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1573356292089) (:by |rJG4IHzWf) (:text |app.comp.container)
            |r $ %{} :Expr (:at 1573356347927) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1573356351680) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1573356351873) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1573356354451) (:by |rJG4IHzWf) (:text |phlox.core)
                    |r $ %{} :Leaf (:at 1573356355219) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1573356355436) (:by |rJG4IHzWf)
                      :data $ {}
                        |s $ %{} :Leaf (:at 1581850032842) (:by |rJG4IHzWf) (:text |g)
                        |t $ %{} :Leaf (:at 1581003569723) (:by |rJG4IHzWf) (:text |hslx)
                        |v $ %{} :Leaf (:at 1573974176863) (:by |rJG4IHzWf) (:text |rect)
                        |x $ %{} :Leaf (:at 1573974179009) (:by |rJG4IHzWf) (:text |circle)
                        |y $ %{} :Leaf (:at 1573974179800) (:by |rJG4IHzWf) (:text |text)
                        |yT $ %{} :Leaf (:at 1573974254119) (:by |rJG4IHzWf) (:text |container)
                        |yb $ %{} :Leaf (:at 1574181633700) (:by |rJG4IHzWf) (:text |graphics)
                        |yj $ %{} :Leaf (:at 1574007057783) (:by |rJG4IHzWf) (:text |create-list)
                        |yr $ %{} :Leaf (:at 1584639017252) (:by |rJG4IHzWf) (:text |>>)
                |x $ %{} :Expr (:at 1583034151993) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1583034161865) (:by |rJG4IHzWf) (:text |phlox.comp.button)
                    |r $ %{} :Leaf (:at 1583034163079) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1583034163311) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1583034313642) (:by |rJG4IHzWf) (:text |comp-button)
                |yT $ %{} :Expr (:at 1583040803587) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1583040803587) (:by |rJG4IHzWf) (:text |phlox.comp.drag-point)
                    |r $ %{} :Leaf (:at 1583040803587) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1583040803587) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1583040803587) (:by |rJG4IHzWf) (:text |comp-drag-point)
                |yyT $ %{} :Expr (:at 1587288593017) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1587288596975) (:by |rJG4IHzWf) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1587288597735) (:by |rJG4IHzWf) (:text |:as)
                    |v $ %{} :Leaf (:at 1587288598134) (:by |rJG4IHzWf) (:text |ui)
                |yyj $ %{} :Expr (:at 1612613233615) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1612613236216) (:by |rJG4IHzWf) (:text |memof.alias)
                    |r $ %{} :Leaf (:at 1612613237132) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1612613237369) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1612613239222) (:by |rJG4IHzWf) (:text |memof-call)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1527526861413) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526864597) (:by |root) (:text |:dev-ui)
                      |x $ %{} :Leaf (:at 1540054307727) (:by |root) (:text "|\"http://localhost:8100/main.css")
                  |v $ %{} :Expr (:at 1527526865931) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527526868617) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1527526887965) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |w $ %{} :Expr (:at 1528008960614) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528008962775) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1573292416508) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/phlox/")
                  |y $ %{} :Expr (:at 1527868456422) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868457305) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1573292411084) (:by |rJG4IHzWf) (:text "|\"Phlox")
                  |yT $ %{} :Expr (:at 1527868457696) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527868458476) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1573292425255) (:by |rJG4IHzWf) (:text "|\"http://cdn.tiye.me/logo/quamolit.png")
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1573294243713) (:by |rJG4IHzWf) (:text "|\"phlox")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
            |n $ %{} :Expr (:at 1649062761949) (:by |rJG4IHzWf)
              :data $ {}
                |D $ %{} :Leaf (:at 1649062762982) (:by |rJG4IHzWf) (:text |:require)
                |T $ %{} :Expr (:at 1649062761526) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1649062761526) (:by |rJG4IHzWf) (:text "|\"mobile-detect")
                    |b $ %{} :Leaf (:at 1649062761526) (:by |rJG4IHzWf) (:text |:default)
                    |h $ %{} :Leaf (:at 1649062761526) (:by |rJG4IHzWf) (:text |mobile-detect)
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1573662553239) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612518324467) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1573662553239) (:by |rJG4IHzWf) (:text |*store)
              |r $ %{} :Leaf (:at 1573662562450) (:by |rJG4IHzWf) (:text |schema/store)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1573662594481) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1573662594481) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1573662594481) (:by |rJG4IHzWf) (:text |dispatch!)
              |r $ %{} :Expr (:at 1573662594481) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573662598886) (:by |rJG4IHzWf) (:text |op)
              |x $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |when)
                  |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |and)
                      |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |dev?)
                      |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Expr (:at 1689007835876) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1689007836766) (:by |rJG4IHzWf) (:text |nth)
                              |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op)
                              |b $ %{} :Leaf (:at 1689007837556) (:by |rJG4IHzWf) (:text |0)
                          |r $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |:states)
                  |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1689007844283) (:by |rJG4IHzWf) (:text |js/console.log)
                      |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text "|\"dispatch!")
                      |r $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op)
              |y $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |let)
                  |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-id)
                          |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1643606538079) (:by |rJG4IHzWf) (:text |nanoid)
                      |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-time)
                          |j $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1622476150108) (:by |rJG4IHzWf) (:text |js/Date.now)
                  |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |reset!)
                      |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |*store)
                      |r $ %{} :Expr (:at 1583036785574) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |updater)
                          |j $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |@*store)
                          |r $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op)
                          |x $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-id)
                          |y $ %{} :Leaf (:at 1583036785574) (:by |rJG4IHzWf) (:text |op-time)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1548266583359) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1548266583359) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1548266583359) (:by |rJG4IHzWf) (:text |main!)
              |r $ %{} :Expr (:at 1548266583359) (:by |rJG4IHzWf)
                :data $ {}
              |x $ %{} :Expr (:at 1548267246722) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1573356695965) (:by |rJG4IHzWf) (:text |;)
                  |T $ %{} :Leaf (:at 1548267254997) (:by |rJG4IHzWf) (:text |js/console.log)
                  |j $ %{} :Leaf (:at 1548267256875) (:by |rJG4IHzWf) (:text |PIXI)
              |x5 $ %{} :Expr (:at 1629169679580) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629169680159) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Leaf (:at 1629169690355) (:by |rJG4IHzWf) (:text |dev?)
                  |T $ %{} :Expr (:at 1619604279980) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1619604280258) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |yD $ %{} :Expr (:at 1583685469966) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1583685471113) (:by |rJG4IHzWf) (:text |->)
                  |T $ %{} :Expr (:at 1583685458471) (:by |rJG4IHzWf)
                    :data $ {}
                      |5 $ %{} :Leaf (:at 1612518371822) (:by |rJG4IHzWf) (:text |new)
                      |D $ %{} :Leaf (:at 1649074551300) (:by |rJG4IHzWf) (:text |FontFaceObserver)
                      |L $ %{} :Leaf (:at 1583685465541) (:by |rJG4IHzWf) (:text "|\"Josefin Sans")
                  |j $ %{} :Expr (:at 1583685473053) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1622473394612) (:by |rJG4IHzWf) (:text |.!load)
                  |r $ %{} :Expr (:at 1583685474396) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1622473396717) (:by |rJG4IHzWf) (:text |.!then)
                      |j $ %{} :Expr (:at 1583685475787) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583685476122) (:by |rJG4IHzWf) (:text |fn)
                          |j $ %{} :Expr (:at 1583685476351) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612518724131) (:by |rJG4IHzWf) (:text |event)
                          |r $ %{} :Expr (:at 1612598209322) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612598212748) (:by |rJG4IHzWf) (:text |render-app!)
              |yL $ %{} :Expr (:at 1573662742473) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573662744127) (:by |rJG4IHzWf) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1573662745368) (:by |rJG4IHzWf) (:text |*store)
                  |r $ %{} :Leaf (:at 1573662747477) (:by |rJG4IHzWf) (:text |:change)
                  |v $ %{} :Expr (:at 1573662747891) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1573662748179) (:by |rJG4IHzWf) (:text |fn)
                      |j $ %{} :Expr (:at 1573662748480) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612523240288) (:by |rJG4IHzWf) (:text |store)
                          |j $ %{} :Leaf (:at 1612523241647) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1612598419615) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598461873) (:by |rJG4IHzWf) (:text |render-app!)
              |yP $ %{} :Expr (:at 1649062574418) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1649062574418) (:by |rJG4IHzWf) (:text |render-control!)
              |yR $ %{} :Expr (:at 1649062574418) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1649062574418) (:by |rJG4IHzWf) (:text |start-control-loop!)
                  |b $ %{} :Leaf (:at 1649062574418) (:by |rJG4IHzWf) (:text |8)
                  |h $ %{} :Leaf (:at 1649062574418) (:by |rJG4IHzWf) (:text |on-control-event)
              |yT $ %{} :Expr (:at 1573356701317) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1573356701317) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1573356701317) (:by |rJG4IHzWf) (:text "|\"App Started")
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629390760417) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1629390761154) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1629390762875) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1629390763423) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1629390769213) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629390769642) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1629390769878) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629390771868) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1629390773740) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1548266585003) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629390768014) (:by |rJG4IHzWf) (:text |do)
                      |w $ %{} :Expr (:at 1593275706640) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1593275715294) (:by |rJG4IHzWf) (:text |clear-phlox-caches!)
                      |xj $ %{} :Expr (:at 1612598605762) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598610437) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1612598614898) (:by |rJG4IHzWf) (:text |*store)
                          |r $ %{} :Leaf (:at 1612598623332) (:by |rJG4IHzWf) (:text |:change)
                      |y $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |*store)
                          |r $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |:change)
                          |v $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |store)
                                  |j $ %{} :Leaf (:at 1612598431174) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612598431174) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612598450034) (:by |rJG4IHzWf) (:text |render-app!)
                      |yT $ %{} :Expr (:at 1612598631582) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598631582) (:by |rJG4IHzWf) (:text |render-app!)
                      |yb $ %{} :Expr (:at 1649062605991) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1649062605991) (:by |rJG4IHzWf) (:text |replace-control-loop!)
                          |b $ %{} :Leaf (:at 1649062605991) (:by |rJG4IHzWf) (:text |8)
                          |h $ %{} :Leaf (:at 1649062605991) (:by |rJG4IHzWf) (:text |on-control-event)
                      |yj $ %{} :Expr (:at 1629390777796) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629390783109) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629390803362) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1629390804302) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1629390805229) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629390808107) (:by |rJG4IHzWf) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629390809537) (:by |rJG4IHzWf) (:text "|\"error")
                      |r $ %{} :Leaf (:at 1629390812951) (:by |rJG4IHzWf) (:text |build-errors)
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1612598213430) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1612598215112) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1612598213430) (:by |rJG4IHzWf) (:text |render-app!)
              |r $ %{} :Expr (:at 1612598213430) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1613831657319) (:by |rJG4IHzWf) (:text |?)
                  |j $ %{} :Leaf (:at 1613831657933) (:by |rJG4IHzWf) (:text |arg)
              |v $ %{} :Expr (:at 1612598216289) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Expr (:at 1612598216289) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |@*store)
                  |r $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |dispatch!)
                  |v $ %{} :Expr (:at 1612598472049) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1629169711960) (:by |rJG4IHzWf) (:text |or)
                      |L $ %{} :Leaf (:at 1613831661153) (:by |rJG4IHzWf) (:text |arg)
                      |T $ %{} :Expr (:at 1612598216289) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612598216289) (:by |rJG4IHzWf) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1548266580449) (:by |rJG4IHzWf)
          :data $ {}
            |T $ %{} :Leaf (:at 1548266580449) (:by |rJG4IHzWf) (:text |ns)
            |j $ %{} :Leaf (:at 1548266580449) (:by |rJG4IHzWf) (:text |app.main)
            |r $ %{} :Expr (:at 1548267234269) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1548267234910) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1548267235111) (:by |rJG4IHzWf)
                  :data $ {}
                    |X $ %{} :Leaf (:at 1548267268346) (:by |rJG4IHzWf) (:text "|\"pixi.js")
                    |b $ %{} :Leaf (:at 1548267239536) (:by |rJG4IHzWf) (:text |:as)
                    |j $ %{} :Leaf (:at 1548267236197) (:by |rJG4IHzWf) (:text |PIXI)
                |r $ %{} :Expr (:at 1573356495638) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1573356502361) (:by |rJG4IHzWf) (:text |phlox.core)
                    |r $ %{} :Leaf (:at 1573356503682) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1573356503870) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1573356508921) (:by |rJG4IHzWf) (:text |render!)
                        |r $ %{} :Leaf (:at 1593275719006) (:by |rJG4IHzWf) (:text |clear-phlox-caches!)
                        |t $ %{} :Leaf (:at 1649062657337) (:by |rJG4IHzWf) (:text |update-viewer!)
                        |u $ %{} :Leaf (:at 1649145601535) (:by |rJG4IHzWf) (:text |on-control-event)
                |v $ %{} :Expr (:at 1573356509898) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1622482559187) (:by |rJG4IHzWf) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1573356520731) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1573356520963) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1573356527039) (:by |rJG4IHzWf) (:text |comp-container)
                |x $ %{} :Expr (:at 1573662565143) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1622482350875) (:by |rJG4IHzWf) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1573662571099) (:by |rJG4IHzWf) (:text |:as)
                    |v $ %{} :Leaf (:at 1573662571751) (:by |rJG4IHzWf) (:text |schema)
                |y $ %{} :Expr (:at 1580869162931) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1649145594407) (:by |rJG4IHzWf) (:text |phlox.config)
                    |r $ %{} :Leaf (:at 1580869166624) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1580869166807) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580869168063) (:by |rJG4IHzWf) (:text |dev?)
                        |n $ %{} :Leaf (:at 1649062582689) (:by |rJG4IHzWf) (:text |mobile?)
                |yT $ %{} :Expr (:at 1580869187547) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1643606542981) (:by |rJG4IHzWf) (:text "|\"nanoid")
                    |r $ %{} :Leaf (:at 1643606544523) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1643606547824) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1643606547106) (:by |rJG4IHzWf) (:text |nanoid)
                |yj $ %{} :Expr (:at 1580869200657) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1622482355845) (:by |rJG4IHzWf) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1580869206447) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1580869206643) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1580869207738) (:by |rJG4IHzWf) (:text |updater)
                |yr $ %{} :Expr (:at 1583685438044) (:by |rJG4IHzWf)
                  :data $ {}
                    |n $ %{} :Leaf (:at 1612538257268) (:by |rJG4IHzWf) (:text "|\"fontfaceobserver-es")
                    |r $ %{} :Leaf (:at 1649074554488) (:by |rJG4IHzWf) (:text |:default)
                    |v $ %{} :Leaf (:at 1583685444335) (:by |rJG4IHzWf) (:text |FontFaceObserver)
                |yv $ %{} :Expr (:at 1629390819770) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |build-errors)
                |yx $ %{} :Expr (:at 1629390819770) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1629390819770) (:by |rJG4IHzWf) (:text |hud!)
                |z $ %{} :Expr (:at 1649062671808) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |touch-control.core)
                    |b $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1649062671808) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |render-control!)
                        |b $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |start-control-loop!)
                        |h $ %{} :Leaf (:at 1649062671808) (:by |rJG4IHzWf) (:text |replace-control-loop!)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1499755354983) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1574442604907) (:by |rJG4IHzWf) (:text |:tab)
                      |j $ %{} :Leaf (:at 1574442608347) (:by |rJG4IHzWf) (:text |:drafts)
                  |v $ %{} :Expr (:at 1573662577190) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1573662584008) (:by |rJG4IHzWf) (:text |:x)
                      |j $ %{} :Leaf (:at 1574354112693) (:by |rJG4IHzWf) (:text |0)
                  |x $ %{} :Expr (:at 1582911206025) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1582911213777) (:by |rJG4IHzWf) (:text |:keyboard-on?)
                      |j $ %{} :Leaf (:at 1582911214855) (:by |rJG4IHzWf) (:text |false)
                  |y $ %{} :Expr (:at 1582911216588) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1582911257309) (:by |rJG4IHzWf) (:text |:counted)
                      |j $ %{} :Leaf (:at 1582911223411) (:by |rJG4IHzWf) (:text |0)
                  |yT $ %{} :Expr (:at 1583036803879) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1583036804777) (:by |rJG4IHzWf) (:text |:states)
                      |j $ %{} :Expr (:at 1583036805113) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036806368) (:by |rJG4IHzWf) (:text |{})
                  |yj $ %{} :Expr (:at 1584639518204) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1584639519390) (:by |rJG4IHzWf) (:text |:cursor)
                      |j $ %{} :Expr (:at 1584639519989) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584639519838) (:by |rJG4IHzWf) (:text |[])
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1689007858349) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |op)
                  |r $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689007872297) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |:add-x)
                      |j $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |update)
                          |j $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |:x)
                          |v $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |x)
                              |r $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |if)
                                  |j $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |>)
                                      |j $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |x)
                                      |r $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |10)
                                  |r $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |0)
                                  |v $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |+)
                                      |j $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |x)
                                      |r $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |1)
                  |v $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689007873785) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |:tab)
                          |b $ %{} :Leaf (:at 1689007874598) (:by |rJG4IHzWf) (:text |t)
                      |j $ %{} :Expr (:at 1580869092576) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |assoc)
                          |j $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1580869092576) (:by |rJG4IHzWf) (:text |:tab)
                          |v $ %{} :Leaf (:at 1689007875821) (:by |rJG4IHzWf) (:text |t)
                  |vT $ %{} :Expr (:at 1582911295239) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689007876742) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1582911297225) (:by |rJG4IHzWf) (:text |:toggle-keyboard)
                      |j $ %{} :Expr (:at 1582911298200) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1582911298810) (:by |rJG4IHzWf) (:text |update)
                          |j $ %{} :Leaf (:at 1582911303041) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1582911310272) (:by |rJG4IHzWf) (:text |:keyboard-on?)
                          |v $ %{} :Leaf (:at 1582911311397) (:by |rJG4IHzWf) (:text |not)
                  |vj $ %{} :Expr (:at 1582911312945) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689007877981) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1582911314686) (:by |rJG4IHzWf) (:text |:counted)
                      |j $ %{} :Expr (:at 1582911315115) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1582911316804) (:by |rJG4IHzWf) (:text |update)
                          |j $ %{} :Leaf (:at 1582911317557) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1582911318980) (:by |rJG4IHzWf) (:text |:counted)
                          |v $ %{} :Leaf (:at 1582911319891) (:by |rJG4IHzWf) (:text |inc)
                  |vr $ %{} :Expr (:at 1583036795773) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689007879050) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1583036795773) (:by |rJG4IHzWf) (:text |:states)
                          |b $ %{} :Leaf (:at 1689007880540) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1689007881634) (:by |rJG4IHzWf) (:text |s)
                      |b $ %{} :Expr (:at 1585489364274) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1585489365071) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1585489370372) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1689007883249) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1689007883535) (:by |rJG4IHzWf) (:text |s)
                  |w $ %{} :Expr (:at 1580869104875) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689007884477) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1580869104875) (:by |rJG4IHzWf) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1689007885275) (:by |rJG4IHzWf) (:text |d)
                      |j $ %{} :Leaf (:at 1689007885976) (:by |rJG4IHzWf) (:text |d)
                  |x $ %{} :Expr (:at 1689007861026) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1689007861950) (:by |rJG4IHzWf) (:text |_)
                      |b $ %{} :Expr (:at 1689007862323) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689007862323) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1689007862323) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689007865831) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1689007862323) (:by |rJG4IHzWf) (:text "|\"unknown op")
                              |h $ %{} :Leaf (:at 1689007862323) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1689007862323) (:by |rJG4IHzWf) (:text |store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1585489354778) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1585489355581) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1585489357121) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |[])
                    |j $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |phlox.cursor)
                    |r $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1585489357121) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |[])
                        |j $ %{} :Leaf (:at 1585489357121) (:by |rJG4IHzWf) (:text |update-states)
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
