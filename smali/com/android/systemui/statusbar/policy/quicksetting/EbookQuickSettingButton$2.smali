.class Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;
.super Ljava/lang/Object;
.source "EbookQuickSettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$readingModeCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;->val$readingModeCheckBox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 143
    if-eqz p2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_readingmode_checked"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 150
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;->val$readingModeCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 151
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/EbookQuickSettingButton;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickpanel_readingmode_checked"

    invoke-static {v0, v1, v4, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method
