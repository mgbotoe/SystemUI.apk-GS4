.class Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "DrivingModeQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 64
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DrivingModeQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 69
    :cond_0
    return-void
.end method
