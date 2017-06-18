const memoize = fn => {
  const cache = {};
  return (...args) => {
    if(!(args in cache)) cache[args] = fn(...args);
    return cache[args];
  }
}
