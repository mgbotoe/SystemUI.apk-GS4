.class public Lcom/android/systemui/recent/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;
    }
.end annotation


# static fields
.field public static final CANCEL_PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.CANCEL_PRELOAD"

.field public static final CLOSE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.CLOSE"

.field public static final DEBUG:Z = false

.field public static final PRELOAD_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.PRELOAD"

.field public static final PRELOAD_PERMISSION:Ljava/lang/String; = "com.android.systemui.recent.permission.PRELOAD"

.field static final TAG:Ljava/lang/String; = "RecentsPanel"

.field public static final TOGGLE_RECENTS_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.TOGGLE_RECENTS"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-RecentsPanel"

.field public static final WAITING_FOR_WINDOW_ANIMATION_PARAM:Ljava/lang/String; = "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

.field private static final WAS_SHOWING:Ljava/lang/String; = "was_showing"

.field public static final WINDOW_ANIMATION_START_INTENT:Ljava/lang/String; = "com.android.systemui.recent.action.WINDOW_ANIMATION_START"


# instance fields
.field private mForeground:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field private mShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcom/android/systemui/recent/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsActivity$1;-><init>(Lcom/android/systemui/recent/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsActivity;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/recent/RecentsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return p1
.end method

.method public static forceOpaqueBackground(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 159
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleIntent(Landroid/content/Intent;Z)V
    .locals 6
    .parameter "intent"
    .parameter "checkWaitingForAnimationParam"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 284
    const-string v3, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v3, :cond_0

    .line 288
    const-string v3, "STATUSBAR-RecentsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TOGGLE_RECENTS_INTENT - isShowing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mShowing:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 293
    .local v0, recentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    if-eqz p2, :cond_2

    const-string v3, "com.android.systemui.recent.WAITING_FOR_WINDOW_ANIMATION"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 295
    .local v1, waitingForWindowAnimation:Z
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getLoadedTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->isFirstScreenful()Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZLjava/util/ArrayList;ZZ)V

    goto :goto_0
.end method

.method private updateWallpaperVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/high16 v2, 0x10

    .line 150
    if-eqz p1, :cond_1

    move v1, v2

    .line 151
    .local v1, wpflags:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v0, v3, v2

    .line 153
    .local v0, curflags:I
    if-eq v1, v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/view/Window;->setFlags(II)V

    .line 156
    :cond_0
    return-void

    .line 150
    .end local v0           #curflags:I
    .end local v1           #wpflags:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissAndGoBack()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 213
    const-string v2, "STATUSBAR-RecentsPanel"

    const-string v3, "dismissAndGoBack()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v2, :cond_1

    .line 215
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 217
    .local v0, am:Landroid/app/ActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v1

    .line 221
    .local v1, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RecentTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/RecentsPanelView;->simulateClick(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :goto_0
    return-void

    .line 226
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 228
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v1           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->finish()V

    goto :goto_0
.end method

.method public dismissAndGoHome()V
    .locals 2

    .prologue
    .line 199
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "dismissAndGoHome()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 210
    return-void
.end method

.method isActivityShowing()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    return v0
.end method

.method isForeground()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->dismissAndGoBack()V

    .line 196
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 234
    .local v1, winParams:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 236
    const v2, 0x7f04004c

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->setContentView(I)V

    .line 237
    const v2, 0x7f0900ad

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 238
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v3, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recent/RecentsActivity$TouchOutsideListener;-><init>(Lcom/android/systemui/recent/RecentsActivity;Lcom/android/systemui/statusbar/tablet/StatusBarPanel;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 243
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    .line 244
    .local v0, recentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 245
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setMinSwipeAlpha(F)V

    .line 248
    if-eqz p1, :cond_0

    const-string v2, "was_showing"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v3, v2}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 252
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 253
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "com.android.systemui.recent.action.WINDOW_ANIMATION_START"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recent/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    return-void

    .line 250
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-static {p0}, Lcom/android/systemui/recent/RecentTasksLoader;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recent/RecentTasksLoader;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 274
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 278
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recent/RecentsActivity;->handleIntent(Landroid/content/Intent;Z)V

    .line 279
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 118
    const-string v2, "STATUSBAR-RecentsPanel"

    const-string v3, "onPause()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    if-eqz v2, :cond_0

    .line 129
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 130
    const/high16 v0, 0x400

    .line 131
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 132
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x4000001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 136
    .end local v0           #flags:I
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 183
    const-string v2, "STATUSBAR-RecentsPanel"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mForeground:Z

    .line 186
    const/high16 v0, 0x400

    .line 187
    .local v0, flags:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 188
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 191
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 265
    const-string v0, "was_showing"

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {p0}, Lcom/android/systemui/recent/RecentsActivity;->forceOpaqueBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    .line 171
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 172
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshViews()V

    .line 178
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 179
    return-void

    .line 169
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/recent/RecentsActivity;->updateWallpaperVisibility(Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mShowing:Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView;->onUiHidden()V

    .line 146
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 147
    return-void
.end method
