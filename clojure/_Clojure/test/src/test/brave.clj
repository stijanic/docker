(ns test.brave
  (:gen-class))

;; ---------------------------
(println "--- Control Flow --")
(println (if true
            (do (println "Success!")
                "By Zeus's hammer!")
            (do (println "Failure!")
                "By Aquaman's trident!")))
;; ---------------------------
(println (when true
           (println "Success!")
           "abra cadabra"))
;; ---------------------------
(println "----- Logical -----")
(println (nil? 1))
(println (and :a :b :c))
(println (or :a :b :c))
;; ---------------------------
(println "---- Data Types ---")
(def m {:a 1 :b 2 :c 3 :d "map"})
(def m (hash-map :a 3 :b 5 :d 7))
(println (:d m))
;; ---------------------------
(println (get (vector "one" "two" "three") 2))
(println (get [0 1 2 3 'vector] 4))
;; ---------------------------
(def l (list 1 "list" {3 4}))
(println (nth l 1))
(println (nth '(11 22 33 44) 2))
;; ---------------------------
(println (conj (hash-set :c :b :hash-set) :b))
(println (conj #{"kurt vonnegut" 20 :icicle} :t))
;; ---------------------------
(println (conj (set [:c :b :set]) :a))
(println (conj #{:c :b :set} :1))
;; ---------------------------
(println "-- Function Call --")
(println ((or + -) 1 2 3))
(println ((and (= 1 1) +) 1 2 3 4))
(println ((first [+ 0]) 1 4 6 7))
(println (map inc [0 1 2 3 4]))
;; ---------------------------
(println "-- Function Definition --")
(defn x-chop
  "Describe the kind of chop you're inflicting on someone"
  ([name chop-type]
   (str "I " chop-type " chop " name "! Take that!"))
  ([name]
   (x-chop name "karate")))
(println (x-chop "Kanye East"))
;; ---------------------------
(defn codger-communication
  [whippersnapper]
  (str "Get off my lawn, " whippersnapper "!!!"))
(defn codger
  [& whippersnappers]
  (map codger-communication whippersnappers))
(println (codger "Billy" "Anne-Marie" "The Incredible Bulk"))
;; ---------------------------
(defn favorite-things
  [name & things]
  (str "Hi, " name ", here are my favorite things: "
       (clojure.string/join ", " things)))
(println (favorite-things "Doreen" "gum" "shoes" "kara-te"))
;; ---------------------------
(defn my-first
  [[first-thing]] ; Notice that first-thing is within a vector
  first-thing)
(println (my-first ["oven" "bike" "war-axe"]))
;; ---------------------------
(defn announce-treasure-location
  [{lat :lat lng :lng}]
  (println (str "Treasure lat: " lat))
  (println (str "Treasure lng: " lng)))
(announce-treasure-location {:lat 28.22 :lng 81.33})
;; ---------------------------
(defn announce-treasure-location-better
  [{:keys [lat lng]}]
  (println (str "Treasure lat: " lat))
  (println (str "Treasure lng: " lng)))
(announce-treasure-location-better {:lat 28.21 :lng 81.32})
;; ---------------------------
(defn steer-ship!
  [treasure-location]
  (println (str "Go for: " treasure-location)))

(defn receive-treasure-location
  [{:keys [lat lng] :as treasure-location}]
  (println (str "Treasure lat: " lat))
  (println (str "Treasure lng: " lng))
  ;; One would assume that this would put in new coordinates for your ship
  (steer-ship! treasure-location))

(receive-treasure-location {:lat 27.21 :lng 80.32})
;; ---------------------------
