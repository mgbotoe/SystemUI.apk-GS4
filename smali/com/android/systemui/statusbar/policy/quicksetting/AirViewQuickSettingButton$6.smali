.class Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;
.super Ljava/lang/Object;
.source "AirViewQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showTalkBackDisablePopup(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->doNext()V

    .line 449
    invoke-static {}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$700()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->isAllOptionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$200()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 452
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton$6;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->showConfirmPopup()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;->access$900(Lcom/android/systemui/statusbar/policy/quicksetting/AirViewQuickSettingButton;)V

    .line 455
    :cond_0
    return-void
.end method
