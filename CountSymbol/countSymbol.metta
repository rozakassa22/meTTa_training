(: count-symbol-binary (-> Atom Symbol Number))
(= (count-symbol-binary $tree $symbol)
    (case $tree
        (
            (($left $right) 
                (+ (count-symbol-binary $left $symbol) 
                   (count-symbol-binary $right $symbol)))
            ($node 
                (if (== $node $symbol) 1 0))
        )
    )
)
; Define a binary tree structure
(: BinaryTree (-> Atom Atom Atom))
(: Leaf (-> Atom))
(: Node (-> Atom BinaryTree BinaryTree))

; Create a binary tree
(= (my-tree)
   (Node A 
         (Node B (Leaf A) (Leaf C))
         (Node D (Leaf E) (Leaf A))))

; Count the occurrences of the symbol 'A' in the tree
! (count-symbol-binary (my-tree) A)
