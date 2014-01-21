.class Lcom/android/systemui/recent/RecentTasksLoader$3;
.super Landroid/os/AsyncTask;
.source "RecentTasksLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentTasksLoader;->loadTasksInBackground(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/recent/TaskDescription;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentTasksLoader;

.field final synthetic val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 504
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 22
    .parameter "params"

    .prologue
    .line 526
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "loadTasksInBackground -doInBackground()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v17

    .line 530
    .local v17, origPri:I
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 531
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 532
    .local v18, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    .line 535
    .local v7, am:Landroid/app/ActivityManager;
    const/16 v1, 0x15

    const/4 v2, 0x2

    invoke-virtual {v7, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v20

    .line 537
    .local v20, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v16

    .line 538
    .local v16, numTasks:I
    const-string v1, "STATUSBAR-RecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    recentTasks.size():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 542
    .local v10, homeInfo:Landroid/content/pm/ActivityInfo;
    const/4 v9, 0x1

    .line 543
    .local v9, firstScreenful:Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v21, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v8, 0x0

    .line 547
    .local v8, first:I
    const/4 v11, 0x0

    .local v11, i:I
    const/4 v12, 0x0

    .local v12, index:I
    :goto_0
    move/from16 v0, v16

    if-ge v11, v0, :cond_0

    const/16 v1, 0x15

    if-ge v12, v1, :cond_0

    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "    isCancelled - break"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    .line 604
    if-eqz v9, :cond_1

    .line 606
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    .line 612
    :cond_1
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v2, Lcom/android/systemui/recent/TaskDescription;

    invoke-direct {v2}, Lcom/android/systemui/recent/TaskDescription;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    invoke-static/range {v17 .. v17}, Landroid/os/Process;->setThreadPriority(I)V

    .line 619
    const/4 v1, 0x0

    return-object v1

    .line 552
    :cond_2
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 554
    .local v19, recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 555
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 556
    move-object/from16 v0, v19

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 560
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    #calls: Lcom/android/systemui/recent/RecentTasksLoader;->isCurrentHomeActivity(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    invoke-static {v1, v2, v10}, Lcom/android/systemui/recent/RecentTasksLoader;->access$800(Lcom/android/systemui/recent/RecentTasksLoader;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 547
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 565
    :cond_5
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$700(Lcom/android/systemui/recent/RecentTasksLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 572
    invoke-virtual {v13}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/4 v15, 0x1

    .line 573
    .local v15, mExclude:Z
    :goto_3
    if-eqz v15, :cond_7

    .line 574
    const-string v1, "STATUSBAR-RecentTasksLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t load excludeFromRecents : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 572
    .end local v15           #mExclude:Z
    :cond_6
    const/4 v15, 0x0

    goto :goto_3

    .line 579
    .restart local v15       #mExclude:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v19

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    move-object/from16 v0, v19

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/app/ActivityManager$RecentTaskInfo;->description:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/recent/RecentTasksLoader;->createTaskDescription(IILandroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/CharSequence;)Lcom/android/systemui/recent/TaskDescription;

    move-result-object v14

    .line 583
    .local v14, item:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v14, :cond_4

    .line 586
    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->val$tasksWaitingForThumbnails:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v14}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    if-eqz v9, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mNumTasksInFirstScreenful:I
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$900(Lcom/android/systemui/recent/RecentTasksLoader;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 593
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v21, v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->publishProgress([Ljava/lang/Object;)V

    .line 594
    new-instance v21, Ljava/util/ArrayList;

    .end local v21           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .restart local v21       #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v9, 0x0

    .line 598
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 614
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #item:Lcom/android/systemui/recent/TaskDescription;
    .end local v15           #mExclude:Z
    .end local v19           #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 588
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v14       #item:Lcom/android/systemui/recent/TaskDescription;
    .restart local v15       #mExclude:Z
    .restart local v19       #recentInfo:Landroid/app/ActivityManager$RecentTaskInfo;
    :catch_1
    move-exception v1

    goto :goto_4
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 504
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/RecentTasksLoader$3;->onProgressUpdate([Ljava/util/ArrayList;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:[Ljava/util/ArrayList;,"[Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v3, 0x0

    .line 507
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, "loadTasksInBackground-onProgressUpdate()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentTasksLoader$3;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    aget-object v0, p1, v3

    .line 512
    .local v0, newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 513
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$400(Lcom/android/systemui/recent/RecentTasksLoader;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z
    invoke-static {v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$500(Lcom/android/systemui/recent/RecentTasksLoader;)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->onTasksLoaded(Ljava/util/ArrayList;Z)V

    .line 517
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #setter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->access$602(Lcom/android/systemui/recent/RecentTasksLoader;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 520
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #getter for: Lcom/android/systemui/recent/RecentTasksLoader;->mLoadedTasks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/recent/RecentTasksLoader;->access$600(Lcom/android/systemui/recent/RecentTasksLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 521
    iget-object v1, p0, Lcom/android/systemui/recent/RecentTasksLoader$3;->this$0:Lcom/android/systemui/recent/RecentTasksLoader;

    #setter for: Lcom/android/systemui/recent/RecentTasksLoader;->mFirstScreenful:Z
    invoke-static {v1, v3}, Lcom/android/systemui/recent/RecentTasksLoader;->access$502(Lcom/android/systemui/recent/RecentTasksLoader;Z)Z

    .line 523
    .end local v0           #newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_1
    return-void

    .line 515
    .restart local v0       #newTasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    :cond_2
    const-string v1, "STATUSBAR-RecentTasksLoader"

    const-string v2, " error - mRecentsPanel == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
