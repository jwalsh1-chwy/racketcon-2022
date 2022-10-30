#lang typed/racket

;; 1 Quick Start
(struct pt ([x : Real] [y : Real]))

(: distance (-> pt pt Real))
(define (distance p1 p2)
  (sqrt (+ (sqr (- (pt-x p2) (pt-x p1))) (sqr (- (pt-y p2) (pt-y p1))))))

(quote (distance (pt 0 0) (pt 3.1415 2.7172)))

;; Trees and Recursion

;; 2.1 Datatypes and Unions
(struct leaf ([val : Number]))
(struct node ([left : Tree] [right : Tree]))
(define-type Tree (U leaf node))

(: tree-height (-> Tree Integer))
(define (tree-height t)
  (cond
    [(leaf? t) 1]
    [else (max (+ 1 (tree-height (node-left t))) (+ 1 (tree-height (node-right t))))]))

(: tree-sum (-> Tree Number))
(define (tree-sum t)
  (cond
    [(leaf? t) (leaf-val t)]
    [else (+ (tree-sum (node-left t)) (tree-sum (node-right t)))]))

(: tree-map (-> (-> Number Number) Tree Tree))
(define (tree-map f t)
  (cond
    [(leaf? t) (leaf (f (leaf-val t)))]
    [else (node (tree-map f (node-left t)) (tree-map f (node-right t)))]))

(quote (define my-tree (node (leaf 1) (node (leaf 2) (leaf 3))))
       (tree-height my-tree)
       (tree-sum my-tree)
       (tree-map (lambda (x) (* x x)) my-tree))

;; RacketCon 2022 samples
(: middle (-> (Listof Number) Number))
(define (middle l1)
  (define n (length l1))
  (list-ref l1 (quotient n 2)))

(: mean (-> (Listof Number) Number))
(define (mean l1)
  (define n (length l1))
  (define sum (foldl + 0 l1))
  (/ sum n))

(: median (-> (Listof Number) Number))
(define (median l1)
  (define l2 (sort < l1))
  (middle l2))

(: mode (-> (Listof Number) Number))
(define (mode l1)
  (define l2 (sort < l1))
  (define l3 (group-by (lambda (x y) (= x y)) l2))
  (define l4 (map (lambda (x) (cons (length x) (car x))) l3))
  (define l5 (sort (lambda (x y) (> (car x) (car y))) l4))
  (cdr (car l5)))

(: range (-> (Listof Number) Number))
(define (range l1)
  (define l2 (sort < l1))
  (- (car (last l2)) (car l2)))

(: variance (-> (Listof Number) Number))
(define (variance l1)
  (define n (length l1))
  (define m (mean l1))
  (define l2 (map (lambda (x) (- x m)) l1))
  (define l3 (map (lambda (x) (* x x)) l2))
  (define sum (foldl + 0 l3))
  (/ sum n))
n

(: standard-deviation (-> (Listof Number) Number))
(define (standard-deviation l1)
  (sqrt (variance l1)))

(: z-score (-> (Listof Number) Number Number))
(define (z-score l1 x)
  (define m (mean l1))
  (define s (standard-deviation l1))
  (/ (- x m) s))

(quote (define my-list (list 3 2 1 1))
       (middle my-list) ;; 2
       (mean my-list) ;; 1.75
       (median my-list) ;; 1.5
       (mode my-list) ;; 1
       (range my-list) ;; 2
       )

;; Sorting
(: quicksort (-> (Listof Number) (Listof Number)))
(define (quicksort l1)
  (cond
    [(null? l1) '()]
    [else
     (let ([pivot (car l1)] [rest (cdr l1)])
       (append (quicksort (filter (lambda (x) (< x pivot)) rest))
               (cons pivot (quicksort (filter (lambda (x) (>= x pivot)) rest)))))]))

(: mergesort (-> (Listof Number) (Listof Number)))
(define (mergesort l1)
  (cond
    [(null? l1) '()]
    [(null? (cdr l1)) l1]
    [else
     (let ([l2 (split-at (quotient (length l1) 2) l1)])
       (merge (mergesort (car l2)) (mergesort (cdr l2))))]))

; Examples
;; review contracts and transitivity requirements for sort
(quote (define my-bad-sort-predicate (lambda (x y) (random 2)))
       (define my-bad-sort-predicate2 (lambda (x y) #f)))

;; Lists and Recursion
(: sum (-> (Listof Number) Number))
(define (sum l1)
  (cond
    [(null? l1) 0]
    [else (+ (car l1) (sum (cdr l1)))]))

(: product (-> (Listof Number) Number))
(define (product l1)
  (cond
    [(null? l1) 1]
    [else (* (car l1) (product (cdr l1)))]))

(: length (-> (Listof Number) Integer))
(define (length l1)
  (cond
    [(null? l1) 0]
    [else (+ 1 (length (cdr l1)))]))

(: append (-> (Listof Number) (Listof Number) (Listof Number)))
(define (append l1 l2)
  ) ;; TODO

(: reverse (-> (Listof Number) (Listof Number))) ;; TODO
(define (reverse l1)
  )

(: sort (-> (Listof Number) (Listof Number))) ;; TODO
(define (sort l1)
  )

(: filter (-> (-> Number Boolean) (Listof Number) (Listof Number))) ;; TODO
(define (filter f l1)
  )

(: map (-> (-> Number Number) (Listof Number) (Listof Number))) ;; TODO
(define (map f l1)
  )

(: foldl (-> (-> Number Number Number) Number (Listof Number) Number)) ;; TODO
(define (foldl f init l1)
  )

(: foldr (-> (-> Number Number Number) Number (Listof Number) Number)) ;; TODO
(define (foldr f init l1)
  )

(: zip (-> (Listof Number) (Listof Number) (Listof (Listof Number)))) ;; TODO
(define (zip l1 l2)
  )

(: unzip (-> (Listof (Listof Number)) (Listof Number) (Listof Number))) ;; TODO
(define (unzip l1)
  )

(: zip-with (-> (-> Number Number Number) (Listof Number) (Listof Number) (Listof Number))) ;; TODO
(define (zip-with f l1 l2)
  )

(: zip-with* (-> (-> Number Number Number) (Listof Number) (Listof Number) (Listof Number))) ;; TODO
(define (zip-with* f l1 l2)
  )

(: flatten (-> (Listof (Listof Number)) (Listof Number)))
(define (flatten l1)
  (cond
    [(null? l1) '()]
    [(list? (car l1)) (append (flatten (car l1)) (flatten (cdr l1)))]
    [else (cons (car l1) (flatten (cdr l1)))]))

(: flatten* (-> (Listof (Listof Number)) (Listof Number)))
(define (flatten* l1)
  (cond
    [(null? l1) '()]
    [(list? (car l1)) (append (flatten* (car l1)) (flatten* (cdr l1)))]
    [else (cons (car l1) (flatten* (cdr l1)))]))

; Examples
; Initially work with the set of test cases sufficient in Barliman to synthetically create the function definition
; Secondarily follow up with the contract definitions for any functions that implicitly relty on sort
(quote (define my-list2 (list 6 7 8 9 10))
       (define my-list3 (list 1 3 5 7 9 8 6 4 2 0))
       (append my-list2 my-list3) ;; (6 7 8 9 10 1 3 5 7 9 8 6 4 2 0)
       (reverse my-list3) ;; (0 2 4 6 8 9 7 5 3 1)
       (sort my-list3) ;; (0 1 2 3 4 5 6 7 8 9)
       (filter (lambda (x) (even? x)) my-list3) ;; (0 2 4 6 8)
       (map (lambda (x) (+ x 1)) my-list3) ;; (2 4 6 8 10 10 8 6 4 2)
       (foldl + 0 my-list3) ;; 45
       (foldr + 0 my-list3) ;; 45
       (zip my-list2 my-list3) ;; ((6 1) (7 3) (8 5) (9 7) (10 9))
       (unzip (zip my-list2 my-list3)) ;; ((6 7 8 9 10) (1 3 5 7 9))
       (zip-with + my-list2 my-list3) ;; (7 10 13 16 19)
       (zip-with* + my-list2 my-list3) ;; (7 10 13 16 19)
       )

;; Transformations and Recursion

(: frequencies (-> (Listof Number) (Listof (Listof Number))))
(define (frequencies l1)
  (cond
    [(null? l1) '()]
    [else
     (let ([x (car l1)] [rest (cdr l1)])
       (cons (cons x (length (filter (lambda (y) (= x y)) rest)))
             (frequencies (filter (lambda (y) (not (= x y))) rest))))]))

(: permutations (-> (Listof Number) (Listof (Listof Number))))
(define (permutations l1)
  (cond
    [(null? l1) '()]
    [else
     (let ([x (car l1)] [rest (cdr l1)])
       (append (map (lambda (l2) (cons x l2)) (permutations rest)) (permutations rest)))]))

; Examples
(quote (define my-list4 (list 1 2 1 4 1 6 1 8 1 10))
       (frequencies my-list4) ;; ((1 5) (2 1) (4 1) (6 1) (8 1) (10 1))
       (permutations my-list4) ;;
       )

(define my-friends (list '("John" "Mary" "Peter" "Jane" "Bob")))

(define my-pets (list (list 'dog 'fido) (list 'cat 'fluffy) (list 'fish 'nemo)))

; (struct pet ([species : Symbol] [name : Symbol]))

(define my-books
  (list (list 'title "The Hobbit")
        (list 'author "J.R.R. Tolkien")
        (list 'year 1937)
        (list 'title "The Lord of the Rings")
        (list 'author "J.R.R. Tolkien")
        (list 'year 1954)
        (list 'title "The Silmarillion")
        (list 'author "J.R.R. Tolkien")
        (list 'year 1977)))

; (struct book ([title string] [author string] [year number]))

(define my-people
  (list (list 'name "John")
        (list 'age 30)
        (list 'name "Mary")
        (list 'age 25)
        (list 'name "Peter")
        (list 'age 27)
        (list 'name "Jane")
        (list 'age 22)
        (list 'name "Bob")
        (list 'age 35)))

(define my-philosophers
  (list (list 'name "Plato")
        (list 'born 428)
        (list 'died 348)
        (list 'name "Aristotle")
        (list 'born 384)
        (list 'died 322)
        (list 'name "Socrates")
        (list 'born 470)
        (list 'died 399)))

(struct person ([name : String] [age : Integer] [born : Integer] [died : Integer]))
