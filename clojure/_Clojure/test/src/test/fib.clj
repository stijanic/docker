;;
;; SBCL version:
;; (defun fib(n)
;;   "Naive recursive computation of the nth element of the Fibonacci sequence"
;;   (check-type
;;    n (integer 0 *))
;;   (if (< n 2) n
;;       (+
;;        (fib (1- n))
;;        (fib (- n 2)))))
;;
;; MIT-SCHEME version:
;; (define fib
;;   (lambda (n)
;;           (if (< n 2) n
;;               (+
;;                (fib (1- n))
;;                (fib (- n 2))))))

;;
;; namespace
(ns test.fib)

(defn fib [n]
  (if (< n 2) n (+ (fib (- n 1))
                   (fib (- n 2)))))
(println (fib 25))
