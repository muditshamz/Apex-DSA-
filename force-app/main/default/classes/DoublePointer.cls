//https://leetcode.com/problems/remove-element/
//https://leetcode.com/problems/remove-duplicates-from-sorted-array/
public with sharing class DoublePointer {
    public List<Integer> arrDuplicates(List<Integer> nums) {
        Integer read = 1;
        Integer write = 1;
        while (read < nums.size()) {
            if(nums[read] != nums[read-1] ){
                nums[write] = nums[read];
                read += 1;
                write += 1;
            }else {
                read += 1;
            }
        }
        return nums;
    }
}