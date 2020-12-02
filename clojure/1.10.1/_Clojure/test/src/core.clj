;; M-x customize-themes - change emacs theme
;; M-x cider-jack-in - start REPL
;; C-c C-k - run clojure programme
;; C-x C-e - execute closure line
;; add dependency to project.clj then run 'lein deps'
;; M-x package-install (srefactor, elisp-format, elisp-lint)
;; M-x magit-status (? - help)

;; namespace
(ns core 
  (:require [clojure.string :as string]) 
  (:gen-class))

;; types
(def aString "This is my 1st string")
(def aLong 15)
(def aDouble 1.234)

(println "----- Start -----")
(println (format "pos? %b" (pos? 15)))
(println (format "odd? %b" (odd? 15)))
(println (format "even? %b" (even? 15)))
(println (format "string? %b" (string? 15)))
(println (format "integer? %b" (integer? 15)))
(println (format "number? %b" (number? 15)))
(println (format "float? %b" (float? 15)))
(println (format "nil? %b" (nil? aLong)))
(println "------------------")
(println (format "blank? %b" (string/blank? aString)))
(println (format "includes? %b" (string/includes? aString "ll")))
(println (format "index-of %d" (string/index-of aString "ll")))
(println (format "split %s" (string/split aString #" ")))
(println (format "split %s" (string/split aString #"\d")))
(println (format "join %s" (string/join " " ["The" "Big" "Cheese"])))
(println (format "replace %s" (string/replace "I am 42 " #"42" "43")))
(println (format "upper-case %s" (string/upper-case aString)))
(println (format "lower-case %s" (string/lower-case aString)))
(println "------------------")


;; functions
(defn -main "I don't do a whole lot ... yet." [& args] 
  (println "I'm a little teapot!" (first args)))

(defn foo "I don't do a whole lot." [x] 
  (println x "Hello, World!"))

(-main 1 2 3 4)
(-main "cool")
(println "------------------")
