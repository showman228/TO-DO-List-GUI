#ifndef TASK_H
#define TASK_H

#include <QString>

class Task
{
public:
    Task();
    Task(const QString& nameTask, const QString& description , bool isCompleted = false);

private:
    QString nameTask;
    QString description;
    bool isCompleted;
};

#endif // TASK_H
