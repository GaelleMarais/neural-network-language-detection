
A neural network able to detect the language of a text, using the FANN library. 


## Compilation
```
$ gcc train.c -lfann -lm -o train.o
$ gcc execution.c -lfann -lm -o execution.o
```

## Executions
```
$ ./train.o
$ ./execution.o examples/french.txt
```

## Examples

Training : 

![train](https://user-images.githubusercontent.com/14167172/68110504-6c593280-feed-11e9-959e-957d7e77cced.png)

Execution : 
![example1](https://user-images.githubusercontent.com/14167172/68110498-6b280580-feed-11e9-9166-bdf2bd296998.png)

![example2](https://user-images.githubusercontent.com/14167172/68110499-6bc09c00-feed-11e9-8e0e-c3fe6ea526cc.png)

![example3](https://user-images.githubusercontent.com/14167172/68110500-6bc09c00-feed-11e9-92a9-07c0cff5fdfe.png)

![example4](https://user-images.githubusercontent.com/14167172/68110501-6bc09c00-feed-11e9-939f-ab53ba60fc21.png)

![example5](https://user-images.githubusercontent.com/14167172/68110502-6bc09c00-feed-11e9-8879-dfb2335aaeb5.png)

