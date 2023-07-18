#include "tensorflow/tensorflow/lite/model.h"
#include "tensorflow/tensorflow/lite/interpreter.h"
#include "tensorflow/tensorflow/lite/delegates/gpu/delegate.h"

void gpu_delegate() {
    TfLiteGpuDelegateOptionsV2 options = TfLiteGpuDelegateOptionsV2Default();
    const auto tf_delegate = tflite::Interpreter::TfLiteDelegatePtr(TfLiteGpuDelegateV2Create(&options), TfLiteGpuDelegateV2Delete);
}
