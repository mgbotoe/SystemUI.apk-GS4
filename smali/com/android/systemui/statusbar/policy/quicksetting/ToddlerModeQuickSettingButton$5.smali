.class Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;
.super Ljava/lang/Object;
.source "ToddlerModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->checkSimReady(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->mState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->setActivateStatus(I)V

    .line 285
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 286
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
