.class Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$4;
.super Ljava/lang/Object;
.source "EbookQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->onDisplayReadingModeAlert()V
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
    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 167
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$ReadingModeSettingsActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->callActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    const/4 v1, 0x1

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->setMode(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$500(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;I)V

    .line 170
    return-void
.end method
