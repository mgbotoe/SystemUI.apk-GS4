.class public Lcom/android/systemui/settings/BrightnessDialog;
.super Landroid/app/Dialog;
.source "BrightnessDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BrightnessDialog"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private final mBrightnessDialogLongTimeout:I

.field private final mBrightnessDialogShortTimeout:I

.field private final mDismissDialogRunnable:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    .line 49
    new-instance v1, Lcom/android/systemui/settings/BrightnessDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessDialog$1;-><init>(Lcom/android/systemui/settings/BrightnessDialog;)V

    iput-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogLongTimeout:I

    .line 63
    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogShortTimeout:I

    .line 65
    return-void
.end method

.method private dismissBrightnessDialog(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDialog;->removeAllBrightnessDialogCallbacks()V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void
.end method

.method private removeAllBrightnessDialogCallbacks()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onBrightnessLevelChanged()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogShortTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->dismissBrightnessDialog(I)V

    .line 106
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 74
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 76
    .local v0, window:Landroid/view/Window;
    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 79
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 80
    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 82
    const v1, 0x7f040010

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/BrightnessDialog;->setContentView(I)V

    .line 83
    invoke-virtual {p0, v3}, Lcom/android/systemui/settings/BrightnessDialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 90
    new-instance v2, Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v0, 0x7f090035

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/BrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct {v2, v3, v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v2, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 93
    iget v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessDialogLongTimeout:I

    invoke-direct {p0, v0}, Lcom/android/systemui/settings/BrightnessDialog;->dismissBrightnessDialog(I)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessStateChangeCallback;)V

    .line 95
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->unregisterCallbacks()V

    .line 101
    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDialog;->removeAllBrightnessDialogCallbacks()V

    .line 102
    return-void
.end method
