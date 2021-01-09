(defproject test "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :license {:name "EPL-2.0 OR GPL-2.0-or-later WITH Classpath-exception-2.0"
            :url "https://www.eclipse.org/legal/epl-2.0/"}
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [seancorfield/next.jdbc "1.1.613"]
                 [postgresql/postgresql "9.0-801.jdbc4"]]
  :main ^:skip-aot test.core
  :target-path "target/%s"
  :repl-options {:init-ns test.core}
  :profiles {:uberjar {:aot :all}})
