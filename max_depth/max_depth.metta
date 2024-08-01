; Define the maximum function
(= (max $a $b) (if (> $a $b) $a $b))

; Function to calculate the maximum depth of the tree
(= (max-depth (Leaf)) 1)
(= (max-depth (Node $left $right)) 
   (+ 1 (max (max-depth $left) (max-depth $right))))
; Define a simple tree: Node(Leaf, Node(Leaf, Leaf))
(= (my-tree) (Node (Leaf) (Node (Leaf) (Leaf))))

; Calculate the maximum depth of the tree
! (max-depth (my-tree))
