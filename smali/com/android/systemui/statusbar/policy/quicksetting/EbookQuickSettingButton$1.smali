.class Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "EbookQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 59
    :cond_0
    return-void
.end method
