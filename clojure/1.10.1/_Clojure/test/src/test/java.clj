;;
;; clojure -classpath $(lein classpath) src/test/java.clj
;;

;;
;; namespace
(ns test.java
  (:require [next.jdbc
             :as jdbc]))

;; java test
(println (.toUpperCase "Srdjan Tijanic"))
(println (System/getProperty "java.vm.version"))
(println (System/getenv "USERNAME"))

;; jdbc test
(println "------------------")
(def db {;; :jdbcUrl "$DATABASE_URL"
         :dbtype "postgresql"
         :dbname "astro"
         :host "localhost"
         :user "astro"
         :password "astro"})
(def ds (jdbc/get-datasource db))
(def aCount (jdbc/execute! ds ["SELECT COUNT(*) FROM ASPECT LIMIT 1;"]))
(def aFirst
  (jdbc/execute! ds ["SELECT * FROM ASPECT LIMIT 1;"]))
(println aCount)
(println aFirst)
