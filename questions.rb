def questions

  enumerable_methods = {

    all: 'Passes each element of the collection to the given block.
     The method returns true if the block never returns false or nil.',

    any?: 'Passes each element of the collection to the given block.
     The method returns true if the block ever returns a value other than false or nil.',

    chunk: 'Enumerates over the items, chunking them together based on the return value of the block.
     Consecutive elements which return the same block value are chunked together.',

    collect: 'Aliases with map.',

    count: 'Returns the number of items in enum through enumeration.
     If an argument is given, the number of items in enum that are equal to item are counted.
     If a block is given, it counts the number of elements yielding a true value.',

    cycle: 'Calls block for each element of enum repeatedly n times or forever if none or nil is given.',

    detect: 'Passes each entry in enum to block. Returns the first for which block is not false.
     If no object matches, calls ifnone and returns its result when it is specified, or returns nil otherwise.',

    drop: 'Drops first n elements from enum, and returns rest elements in an array.',

    drop_while: 'Drops elements up to, but not including, the first element for which the block
     returns nil or false and returns an array containing the remaining elements.',

    each_cons: 'Iterates the given block for each array of consecutive <n> elements.',

    each_entry: 'Calls block once for each element in self, passing that element as a parameter,
     converting multiple values from yield to an array.',

    each_slice: 'Iterates the given block for each slice of <n> elements.',

    each_with_index: 'Calls block with two arguments, the item and its index, for each item in enum.
     Given arguments are passed through to each()',

    each_with_object: 'Iterates the given block for each element with an arbitrary object given,
     and returns the initially given object.',

    entries: 'Aliases with to_a.',

    find: 'Aliases with detect',

    find_all: 'Aliases with select',

    find_index: 'Compares each entry in enum with value or passes to block. Returns the index for the first
     for which the evaluated value is non-false. If no object matches, returns nil',

    first: 'Returns the first element, or the first n elements, of the enumerable. If the enumerable is
     empty, the first form returns nil, and the second form returns an empty array.',

    flat_map: 'Returns a new array with the concatenated results of running block once for every element in enum.',

    grep: 'Returns an array of every element in enum for which Pattern === element. If the optional block is
     supplied, each matching element is passed to it, and the block’s result is stored in the output array',

    group_by: 'Groups the collection by result of the block. Returns a hash where the keys are the evaluated
     result from the block and the values are arrays of elements in the collection that correspond to the key.',

    include?: 'Returns true if any member of enum equals obj. Equality is tested using ==.',

    lazy: 'Returns an enumerator, whose methods map/collect, flat_map/collect_concat, select/find_all, reject,
     grep, zip, take, #take_while, drop, and #drop_while enumerate values only on an as-needed basis.
     However, if a block is given to zip, values are enumerated immediately.',

    map: 'Returns a new array with the results of running block once for every element in enum',

    max: 'Returns the object in enum with the maximum value. The first form assumes all objects implement
     Comparable; the second uses the block to return a <=> b.',

    max_by: 'Returns the object in enum that gives the maximum value from the given block.',

    member?: 'Aliases with include?',

    min: 'Returns the object in enum with the minimum value. The first form assumes all objects
     implement Comparable; the second uses the block to return a <=> b.',

    min_by: 'Returns the object in enum that gives the minimum value from the given block.',

    minmax: 'Returns two elements array which contains the minimum and the maximum value in the enumerable.',

    minmax_by: 'Returns a two element array containing the objects in enum that correspond to the minimum and
     maximum values respectively from the given block.',

    none?: 'Passes each element of the collection to the given block. The method returns true if the block
     never returns true for all elements.',

    partition: 'Returns two arrays, the first containing the elements of enum for which the block
     evaluates to true, the second containing the rest.',

    reduce: 'Combines all elements of enum by applying a binary operation, specified by a block or a symbol
     that names a method or operator.',

    reject: 'Returns an array for all elements of enum for which the given block returns false.',

    reverse_each: 'Builds a temporary array and traverses that array in reverse order.',

    select: 'Returns an array containing all elements of enum for which the given block returns a true value.',

    slice_after: 'Creates an enumerator for each chunked elements. The ends of chunks are defined by
     pattern and the block.',

    slice_before: 'Creates an enumerator for each chunked elements. The beginnings of chunks are defined
     by pattern and the block.',

    slice_when: 'Creates an enumerator for each chunked elements. The beginnings of chunks are
     defined by the block.',

    sort: 'Returns an array containing the items in enum sorted, either according to their own <=> method,
     or by using the results of the supplied block. The block should return -1, 0, or +1 depending on the
     comparison between a and b. As of Ruby 1.8, the method Enumerable#sort_by implements a built-in
     Schwartzian Transform, useful when key computation or comparison is expensive.',

    sort_by: 'Sorts enum using a set of keys generated by mapping the values in enum through the given block.',

    take: 'Returns first n elements from enum.',

    take_while: 'Passes elements to the block until the block returns nil or false, then stops iterating
     and returns an array of all prior elements.',

    to_a: 'Returns an array containing the items in enum.',

    zip: 'Takes one element from enum and merges corresponding elements from each args.
     This generates a sequence of n-element arrays, where n is one more than the count of arguments.',
  }

end
