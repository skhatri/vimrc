SESSIONNAME="name"
WORK_DIR="~/dev/projects"

cd ${WORK_DIR}

tmux has-session -t $SESSIONNAME &> /dev/null

if [ $? != 0 ]
 then
    tmux new-session -s $SESSIONNAME -n app -d
    tmux send-keys -t $SESSIONNAME:app "cd ${WORK_DIR}/dir1 && make run-local" ENTER
    tmux new-window -t $SESSIONNAME -n spec -d
    tmux split-window -t $SESSIONNAME:spec
    tmux send-keys -t $SESSIONNAME:spec.1 "cd ${WORK_DIR}/dir2 && mkdocs serve" ENTER
    tmux send-keys -t $SESSIONNAME:spec.2 "cd ${WORK_DIR}/dir2" ENTER
    tmux new-window -t $SESSIONNAME -n examples -d
    tmux send-keys -t $SESSIONNAME:examples "cd ${WORK_DIR}/dir3 && git status" ENTER
    tmux new-window -t $SESSIONNAME -n git -d
    tmux send-keys -t $SESSIONNAME:git "cd ${WORK_DIR}/dir4 && git status" ENTER

fi

tmux attach -t $SESSIONNAME


