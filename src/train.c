#include "./include/fann.h"

int main(){
    const unsigned int num_input = 2;
    const unsigned int num_output = 1;
    const unsigned int num_layers = 3;
    const unsigned int num_neurons_hidden = 3;
    const unsigned int connection_rate = 1;
    const float learning_rate = 0.5;
    const float desired_error = (const float) 0.001;
    const unsigned int max_epochs = 500000;
    const unsigned int epochs_between_reports = 1000;
    int layers[3] = {num_input, num_neurons_hidden, num_output};

    struct fann *ann = fann_create_sparse_array(connection_rate, num_layers, layers);

    fann_set_learning_rate(ann, learning_rate);

    fann_train_on_file(ann, "../data/language.data", max_epochs, epochs_between_reports, desired_error);

    fann_save(ann, "language.net");

    fann_destroy(ann);

    return 0;    
}