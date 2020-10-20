function sortedArray = quickSort(array)
 
if length(array) <= 1       
        sortedArray = array;
        return
end
 
    value = array(end);
    array(end) = [];
 
    sortedArray = [quickSort( array(array <= value) ) value quickSort( array(array > value) )];
 
end
