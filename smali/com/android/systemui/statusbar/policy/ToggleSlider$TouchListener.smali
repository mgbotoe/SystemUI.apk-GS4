.class Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field mFocusInside:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 1
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    .line 438
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 442
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 443
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 472
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setPressed(Z)V

    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    .line 476
    :goto_1
    return v2

    .line 446
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$600(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$700(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 447
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    .line 448
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$800(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0c0168

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setPressed(Z)V

    .line 453
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    goto :goto_1

    .line 457
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setPressed(Z)V

    goto :goto_1

    .line 460
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setPressed(Z)V

    .line 461
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    goto :goto_1

    .line 465
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->mFocusInside:Z

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isChecked()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->playSoundEffect(I)V

    .line 468
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #setter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 466
    goto :goto_2

    .line 443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
