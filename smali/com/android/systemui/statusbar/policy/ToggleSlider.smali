.class public Lcom/android/systemui/statusbar/policy/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;,
        Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_DETAIL_STEP:I = 0x19

.field private static final TAG:Ljava/lang/String; = "StatusBar.ToggleSlider"


# instance fields
.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mBrightnessIcon:Landroid/widget/ImageView;

.field private mBrightnessIconGroup:Landroid/widget/FrameLayout;

.field private mIsTogglePressed:Z

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mSliderLayout:Landroid/widget/LinearLayout;

.field private mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mTracking:Z

.field private mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSliderLayout:Landroid/widget/LinearLayout;

.field private mTwSliderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    const v7, 0x7f040032

    invoke-static {p1, v7, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 99
    sget-object v7, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, a:Landroid/content/res/TypedArray;
    const v7, 0x7f0900b6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 103
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 105
    const v7, 0x7f0900ba

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    .line 106
    const v7, 0x7f0900bb

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    .line 107
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    const-string v3, ""

    .line 110
    .local v3, brightnessText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    div-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 114
    const v7, 0x7f0900b7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 115
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const v7, 0x7f0900bc

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    .line 119
    const v7, 0x7f0900be

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    .line 120
    const v7, 0x7f0900bd

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .line 121
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 122
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_0

    .line 123
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setQuickPanleInstance(Z)V

    .line 126
    :cond_0
    const-string v2, ""

    .line 127
    .local v2, autoBrightnessText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0024

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c00bc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0163

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_4

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0164

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 138
    const v7, 0x7f0900b8

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIconGroup:Landroid/widget/FrameLayout;

    .line 139
    const v7, 0x7f090036

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    .line 140
    const v7, 0x7f090035

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    .line 142
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseCHNFontType:Z

    if-eqz v7, :cond_1

    .line 143
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    const/4 v8, 0x1

    const/high16 v9, 0x4180

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    :cond_1
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v7, :cond_2

    .line 146
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    .line 150
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "screen_brightness_mode"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v8, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 153
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 154
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 155
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 162
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v8, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 180
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v8, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 212
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_7

    .line 214
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 215
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    mul-int/lit8 v8, v8, 0x19

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 223
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_brightness_detail"

    const/16 v9, 0x64

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    div-int/lit8 v7, v7, 0x14

    add-int/lit8 v4, v7, -0x5

    .line 224
    .local v4, defaultProgress:I
    const-string v5, ""

    .line 226
    .local v5, progressValue:Ljava/lang/String;
    if-lez v4, :cond_9

    .line 227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 232
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const v7, 0x7f0900b7

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 235
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 236
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance v6, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 242
    .local v6, touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    const v7, 0x7f0900b5

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 243
    .local v1, autoBrightnessGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_a

    .line 244
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    :goto_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 251
    return-void

    .line 134
    .end local v1           #autoBrightnessGroup:Landroid/view/ViewGroup;
    .end local v4           #defaultProgress:I
    .end local v5           #progressValue:Ljava/lang/String;
    .end local v6           #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 150
    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 157
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    goto/16 :goto_2

    .line 218
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto/16 :goto_3

    :cond_8
    const/4 v7, 0x0

    goto :goto_6

    .line 229
    .restart local v4       #defaultProgress:I
    .restart local v5       #progressValue:Ljava/lang/String;
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 246
    .restart local v1       #autoBrightnessGroup:Landroid/view/ViewGroup;
    .restart local v6       #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_5
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private updateIcon(ZI)V
    .locals 3
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 423
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-nez v0, :cond_1

    .line 424
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f020047

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    :goto_1
    return-void

    .line 424
    :cond_0
    const v0, 0x7f020046

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const v1, 0x7f02006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    goto :goto_1
.end method


# virtual methods
.method public hideToggle()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, -0x2

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 504
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v1, 0x41f0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 505
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 4
    .parameter "toggle"
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 256
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 260
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    if-eqz p2, :cond_3

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 269
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 271
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    .line 273
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto :goto_0

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 280
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 282
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0024

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSliderInDualFolderOpened()V

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setSliderInDualFolderClosed()V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    const/4 v5, 0x0

    .line 291
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v2, p0, v3, v4, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 294
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v2, :cond_3

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 307
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v2, :cond_2

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 312
    .local v1, isChecked:Z
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v2, :cond_2

    .line 313
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 317
    .end local v1           #isChecked:Z
    :cond_2
    const-string v0, ""

    .line 318
    .local v0, brightnessText:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 321
    return-void

    .line 298
    .end local v0           #brightnessText:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->IsDualFolderType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isFolderOpen(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 300
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v3, 0x7f0c0169

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, p0, v2, v3, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v1, :cond_1

    .line 331
    const/4 v1, 0x1

    mul-int/lit8 v2, p2, 0x19

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 333
    :cond_1
    const-string v0, ""

    .line 334
    .local v0, brightnessText:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0163

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 344
    return-void

    .line 341
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 352
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 360
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 368
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 373
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 376
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 385
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 393
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    .line 381
    return-void
.end method

.method public setSliderInDualFolderClosed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 536
    return-void
.end method

.method public setSliderInDualFolderOpened()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 511
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, v3, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 523
    return-void
.end method

.method public setSplitMax(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    .line 402
    return-void
.end method

.method public setSplitText(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 409
    const-string v2, "emin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    add-int/lit8 v0, p1, -0x5

    .line 411
    .local v0, progress:I
    const-string v1, ""

    .line 413
    .local v1, progressValue:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    return-void

    .line 416
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setSplitValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 406
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 397
    return-void
.end method
