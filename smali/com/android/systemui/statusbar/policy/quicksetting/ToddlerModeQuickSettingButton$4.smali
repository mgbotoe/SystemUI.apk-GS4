.class Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$4;
.super Ljava/lang/Object;
.source "ToddlerModeQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;->showConfirmPopup(Z)V
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
    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "unused"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/ToddlerModeQuickSettingButton;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;->mIsProcessing:Z

    .line 249
    return-void
.end method
