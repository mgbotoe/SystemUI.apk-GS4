.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;
.super Landroid/content/BroadcastReceiver;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 573
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 575
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 576
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 577
    .local v2, locale:Ljava/util/Locale;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 582
    .local v3, orientation:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 583
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 588
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 590
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 593
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 594
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2400(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    .line 596
    iget-object v5, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v5, v4}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1902(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;

    .line 597
    iget-object v4, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #setter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mOrientation:I
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$2102(Lcom/android/systemui/statusbar/MiniModeAppsPanel;I)I

    .line 599
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v2           #locale:Ljava/util/Locale;
    .end local v3           #orientation:I
    :cond_4
    return-void
.end method
