.class Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$3;
.super Ljava/lang/Object;
.source "SmartNetworkQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;->onSmartNetworkPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/SmartNetworkQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 154
    return-void
.end method
