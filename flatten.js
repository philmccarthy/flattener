function flatten(items, results = []) {
  items.forEach(item => {
    if (Array.isArray(item)) {
      results.push(...flatten(item));
    } else {
      results.push(item);
    }
  });

  return results;
}

const array_of_ints = [1, 2, 3, [[4], 5], [[[6]]]]
const array_of_strings = ["hi", "this is", [[["string"], "that is very"], [[[["nested"]]]]]]

console.log(flatten(array_of_ints))
console.log(flatten(array_of_strings))
