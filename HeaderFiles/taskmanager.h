#ifndef TASKMANAGER_H
#define TASKMANAGER_H

#include <QObject>
#include <QList>
#include "task.h"

class TaskManager : public QObject
{
    Q_OBJECT
public:
    explicit TaskManager(QObject *parent = nullptr);

    QList<Task> tasks() const;
    void addTask(const Task& task);
    void removeTask(int index);
    void editTask(const Task& changeTask, int index);

signals:
    void tasksChanged();

private:
    QList<Task> m_tasks;
};

#endif // TASKMANAGER_H
