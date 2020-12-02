;; namespace
(ns java 
  (:require [next.jdbc 
             :as jdbc]))

;; Java style
(println (.toUpperCase "Srdjan Tijanic"))
(println (System/getProperty "java.vm.version"))

(println "------------------")
(def db {:dbtype "postgresql" 
         :dbname "astro" 
         :user "astro" 
         :password "astro"})
(def ds (jdbc/get-datasource db))
(def aCount (jdbc/execute! ds ["SELECT COUNT(*) FROM ASPECT LIMIT 1;"]))
(def aFirst
  (jdbc/execute! ds ["SELECT * FROM ASPECT LIMIT 1;"]))

(println aCount)
(println aFirst)
