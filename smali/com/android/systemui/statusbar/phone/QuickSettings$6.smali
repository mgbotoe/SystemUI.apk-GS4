.class Lcom/android/systemui/statusbar/phone/QuickSettings$6;
.super Ljava/lang/Object;
.source "QuickSettings.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/QuickSettingsModel$RefreshCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettings;->addUserTiles(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshView(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;)V
    .locals 3
    .parameter "view"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 341
    const v1, 0x7f09003d

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 342
    .local v0, tv:Landroid/widget/TextView;
    iget v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->iconId:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 343
    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickSettings$6;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettings;

    #getter for: Lcom/android/systemui/statusbar/phone/QuickSettings;->mBrightnessDialogShortTimeout:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$500(Lcom/android/systemui/statusbar/phone/QuickSettings;)I

    move-result v2

    #calls: Lcom/android/systemui/statusbar/phone/QuickSettings;->dismissBrightnessDialog(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/QuickSettings;->access$600(Lcom/android/systemui/statusbar/phone/QuickSettings;I)V

    .line 345
    return-void
.end method
