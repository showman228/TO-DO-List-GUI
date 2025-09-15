#include "task.h"
#include <QString>

Task::Task(const QString& nameTask, const QString& description , bool isCompleted){
    this->nameTask = nameTask;
    this->description = description;
    this->isCompleted = isCompleted;
};
