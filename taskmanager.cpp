#include "taskmanager.h"
#include <QObject>


TaskManager::TaskManager(QObject *parent) : QObject(parent) {}

//возвращаем список задач
QList<Task> TaskManager::tasks() const {
    return m_tasks;
}

void TaskManager::addTask(const Task& task){
    m_tasks.append(task);
    emit tasksChanged();
}

void TaskManager::removeTask(int index){
    if (index >= 0 && index < m_tasks.size()){
        m_tasks.removeAt(index);
        emit tasksChanged();
    }
}

void TaskManager::editTask(const Task& task, int index) {
    if (index >= 0 && index < m_tasks.size()) {
        m_tasks[index] = task;
        emit tasksChanged();
    }
}
