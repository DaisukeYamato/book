#ifndef TASKMANAGER_H_
#define TASKMANAGER_H_

#include <vector>

//======================================
// class TaksManager
//======================================
class TaskManager {
 public:
  // I/F for task function
  // task removal when return false
  typedef bool (*FpTask)();

 private:
  // conserve type
  typedef std::vector<FpTask> TaskArray;
  typedef TaskArray::size_type SizeType;

 public:
  void Execute();
  void Register(FpTask task);

 private:
  void Unregister(SizeType id);

 private:
  TaskArray m_task; // conserved array
};

#endif // TASKMANAGER_H_
