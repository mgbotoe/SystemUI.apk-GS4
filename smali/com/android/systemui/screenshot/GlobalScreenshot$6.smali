.class Lcom/android/systemui/screenshot/GlobalScreenshot$6;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick$OnCaptureAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimationForShutterClickEffect(Ljava/lang/Runnable;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

.field final synthetic val$finisher:Ljava/lang/Runnable;

.field final synthetic val$frame:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/widget/FrameLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iput-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$frame:Landroid/widget/FrameLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1051
    :try_start_0
    const-string v0, "ScreenCapture"

    const-string v2, "Capture effect finished!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1053
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$finisher:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    #calls: Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    invoke-static {v3, v4, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$frame:Landroid/widget/FrameLayout;

    invoke-interface {v0, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->val$frame:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    invoke-static {v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1059
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    const/4 v3, 0x0

    #setter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mCaptureViewForShutterClick:Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;
    invoke-static {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1102(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;)Lcom/android/systemui/screenshot/CaptureEffectViewForShutterClick;

    .line 1073
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1074
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1075
    return-void

    .line 1061
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot$6;->this$0:Lcom/android/systemui/screenshot/GlobalScreenshot;

    #getter for: Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$6$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot$6;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1073
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1074
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method
