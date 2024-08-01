; Function to check if a symbol is inside a tree
(= (symbol-in-tree $symbol (Leaf $symbol)) True)
(= (symbol-in-tree $symbol (Leaf $_)) False)
(= (symbol-in-tree $symbol (Node $left $right)) 
   (or (symbol-in-tree $symbol $left)
       (symbol-in-tree $symbol $right)))

; Define a simple tree: Node(Leaf(A), Node(Leaf(B), Leaf(C)))
(= (my-tree) (Node (Leaf A) (Node (Leaf B) (Leaf C))))

; Check if the symbol B is inside the tree
! (symbol-in-tree B (my-tree)) ; return True

; Check if the symbol D is inside the tree
! (symbol-in-tree D (my-tree)) ; return False
