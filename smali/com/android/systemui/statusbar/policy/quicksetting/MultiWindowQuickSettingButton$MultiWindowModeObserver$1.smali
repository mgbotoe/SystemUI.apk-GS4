.class Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver$1;
.super Ljava/lang/Object;
.source "MultiWindowQuickSettingButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver$1;->this$1:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver$1;->this$1:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton$MultiWindowModeObserver;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->changeStatus()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MultiWindowQuickSettingButton;)V

    .line 213
    return-void
.end method
