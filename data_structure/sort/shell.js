function shellSort(arr) {
    var len = arr.length;
    for (var gap = Math.floor(len / 2); gap > 0; gap = Math.floor(gap / 2)) {
        // 注意：这里和动图演示的不一样，动图是分组执行，实际操作是多个分组交替执行
        for (var i = gap; i < len; i++) {
            var j = i;
            console.log('for2 i: ' + i + ' arr[' + i + ']=' + arr[i])
            var current = arr[i];
            while (j - gap >= 0 && current < arr[j - gap]) {
                console.log('while j: ' + i + ' arr[' + i + ']=' + arr[j] + ' j - gap: arr[' + (j - gap) + ']')
                 arr[j] = arr[j - gap];
                 j = j - gap;
                console.log('sort -- : [' + arr + ']')
            }
            arr[j] = current;
            console.log('for2 end current: ' + current)
        }
        console.log('for1 end')
    }
    return arr;
}

var arr = [3, 1, 4, 5, 2, 9]
console.log('sort before: ' + arr)
shellSort(arr)
console.log(arr)
