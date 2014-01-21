.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final FLASH_ANNOTATE_CLASS_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate.FlashAnnotateActivity"

.field private static final FLASH_ANNOTATE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.spen.flashannotate"

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field mContext:Landroid/content/Context;

.field private mImageFileName:Ljava/lang/String;

.field private mImageFilePath:Ljava/lang/String;

.field private mImageTime:J

.field private mIsBasedLandscape:Z

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationId:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationStyle:Landroid/app/Notification$BigPictureStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 22
    .parameter "context"
    .parameter "data"
    .parameter "nManager"
    .parameter "nId"

    .prologue
    .line 159
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 163
    .local v16, r:Landroid/content/res/Resources;
    const-string v18, "ro.build.type"

    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "eng"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 164
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    .line 169
    :goto_0
    sget-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v18, :cond_0

    const-string v18, "SaveImageInBackgroundTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SaveImageInBackgroundTask\'s SCREENSHOT_NOTIFICATION_ID = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 172
    new-instance v18, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v18 .. v19}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v19, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v20, v0

    invoke-direct/range {v19 .. v21}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v18 .. v19}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 173
    .local v8, imageDate:Ljava/lang/String;
    sget-object v18, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 175
    .local v9, imageDir:Ljava/lang/String;
    const-string v18, "Screenshot_%s.png"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v8, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 176
    const-string v18, "%s/%s/%s"

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    const/16 v20, 0x1

    const-string v21, "Screenshots"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 179
    sget-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v18, :cond_1

    const-string v18, "SaveImageInBackgroundTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SaveImageInBackgroundTask\'s mImageFilePath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 183
    .local v11, imageWidth:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    .line 184
    .local v10, imageHeight:I
    move-object/from16 v0, p2

    iget v7, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 186
    .local v7, iconSize:I
    if-ge v11, v10, :cond_3

    move/from16 v17, v11

    .line 187
    .local v17, shortSide:I
    :goto_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v18

    move/from16 v0, v17

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 188
    .local v15, preview:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v15}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 190
    .local v14, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 191
    .local v5, desat:Landroid/graphics/ColorMatrix;
    const/high16 v18, 0x3e80

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 192
    new-instance v18, Landroid/graphics/ColorMatrixColorFilter;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 193
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    .line 194
    .local v12, matrix:Landroid/graphics/Matrix;
    sub-int v18, v17, v11

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-int v19, v17, v10

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 196
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v12, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 197
    const v18, 0x40ffffff

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 199
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v15, v7, v7, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 202
    .local v4, croppedIcon:Landroid/graphics/Bitmap;
    sget-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v18, :cond_4

    const/16 v18, 0x1

    :goto_2
    sput-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 203
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 204
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 205
    new-instance v19, Landroid/app/Notification$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v20, 0x7f0c003e

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v18, :cond_5

    const-string v18, " "

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0c003f

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0c0040

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v18

    const v19, 0x7f0200b0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 213
    new-instance v18, Landroid/app/Notification$BigPictureStyle;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    .line 218
    .local v13, n:Landroid/app/Notification;
    iget v0, v13, Landroid/app/Notification;->flags:I

    move/from16 v18, v0

    or-int/lit8 v18, v18, 0x20

    move/from16 v0, v18

    iput v0, v13, Landroid/app/Notification;->flags:I

    .line 220
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p4

    invoke-virtual {v0, v1, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 231
    return-void

    .line 166
    .end local v3           #c:Landroid/graphics/Canvas;
    .end local v4           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v5           #desat:Landroid/graphics/ColorMatrix;
    .end local v7           #iconSize:I
    .end local v8           #imageDate:Ljava/lang/String;
    .end local v9           #imageDir:Ljava/lang/String;
    .end local v10           #imageHeight:I
    .end local v11           #imageWidth:I
    .end local v12           #matrix:Landroid/graphics/Matrix;
    .end local v13           #n:Landroid/app/Notification;
    .end local v14           #paint:Landroid/graphics/Paint;
    .end local v15           #preview:Landroid/graphics/Bitmap;
    .end local v17           #shortSide:I
    :cond_2
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    goto/16 :goto_0

    .restart local v7       #iconSize:I
    .restart local v8       #imageDate:Ljava/lang/String;
    .restart local v9       #imageDir:Ljava/lang/String;
    .restart local v10       #imageHeight:I
    .restart local v11       #imageWidth:I
    :cond_3
    move/from16 v17, v10

    .line 186
    goto/16 :goto_1

    .line 202
    .restart local v3       #c:Landroid/graphics/Canvas;
    .restart local v4       #croppedIcon:Landroid/graphics/Bitmap;
    .restart local v5       #desat:Landroid/graphics/ColorMatrix;
    .restart local v12       #matrix:Landroid/graphics/Matrix;
    .restart local v14       #paint:Landroid/graphics/Paint;
    .restart local v15       #preview:Landroid/graphics/Bitmap;
    .restart local v17       #shortSide:I
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 205
    :cond_5
    const-string v18, ""

    goto/16 :goto_3

    .line 221
    .restart local v13       #n:Landroid/app/Notification;
    :catch_0
    move-exception v6

    .line 222
    .local v6, e:Ljava/lang/Exception;
    const-string v18, "SaveImageInBackgroundTask"

    const-string v19, "SaveImageInBackgroundTask\'s exception is occured in NotificationManager.notify"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private getCurrentDegree()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 458
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 459
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 460
    .local v1, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 462
    .local v2, displaySize:Landroid/graphics/Point;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    int-to-float v0, v4

    .line 463
    .local v0, degree:F
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 465
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x4000

    cmpl-float v4, v0, v4

    if-nez v4, :cond_3

    .line 466
    :cond_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_2

    .line 467
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    .line 479
    :cond_1
    :goto_0
    return v0

    .line 469
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0

    .line 471
    :cond_3
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x4040

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    .line 472
    :cond_4
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_5

    .line 473
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0

    .line 475
    :cond_5
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 444
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 446
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 448
    const/4 v2, 0x1

    .line 453
    :cond_0
    :goto_0
    return v2

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 31
    .parameter "params"

    .prologue
    .line 235
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_0

    const/16 v26, 0x0

    .line 354
    :goto_0
    return-object v26

    .line 239
    :cond_0
    const/16 v26, -0x2

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 241
    const/16 v26, 0x0

    aget-object v26, p1, v26

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 242
    .local v6, context:Landroid/content/Context;
    const/16 v26, 0x0

    aget-object v26, p1, v26

    move-object/from16 v0, v26

    iget-object v12, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 243
    .local v12, image:Landroid/graphics/Bitmap;
    const/16 v18, 0x0

    .line 244
    .local v18, out:Ljava/io/OutputStream;
    const/4 v15, 0x0

    .line 245
    .local v15, imageFile:Ljava/io/File;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 246
    .local v20, r:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const-string v27, "com.sec.feature.spen_usp"

    invoke-virtual/range {v26 .. v27}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 247
    .local v11, hasSPenUspFeature:Z
    const/16 v17, 0x0

    .line 250
    .local v17, isLongLifeMode:Z
    :try_start_0
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 251
    .end local v15           #imageFile:Ljava/io/File;
    .local v16, imageFile:Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    .line 252
    .local v13, imageDir:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v26

    if-nez v26, :cond_1

    .line 253
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 255
    :cond_1
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 257
    .end local v18           #out:Ljava/io/OutputStream;
    .local v19, out:Ljava/io/OutputStream;
    const/16 v26, 0x1

    :try_start_2
    sget-object v27, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v28, 0x64

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v12, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 258
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 261
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 262
    .local v25, values:Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 263
    .local v21, resolver:Landroid/content/ContentResolver;
    const-string v26, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v26, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v26, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v26, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    const-string v26, "date_added"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    const-string v26, "date_modified"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v27, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v26, "mime_type"

    const-string v27, "image/png"

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v26, "_size"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 271
    sget-object v26, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 273
    .local v23, uri:Landroid/net/Uri;
    const-string v26, "%s/%s/"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    sget-object v29, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    const-string v29, "Screenshots"

    aput-object v29, v27, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 278
    .local v14, imageDirPath:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v26, "android.intent.action.DELETE"

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 279
    .local v8, deleteIntent:Landroid/content/Intent;
    const-string v26, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-class v26, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v26

    invoke-virtual {v8, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v26, v0

    const v27, 0x7f02017d

    const v28, 0x1040607

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/high16 v30, 0x1000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v6, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 286
    if-nez v17, :cond_2

    .line 288
    new-instance v10, Landroid/content/Intent;

    const-string v26, "android.intent.action.SEND"

    move-object/from16 v0, v26

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    .local v10, editIntent:Landroid/content/Intent;
    const-string v26, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v26, "DirPath"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v26, "degree"

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 292
    const-string v26, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    const-class v26, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v26

    invoke-virtual {v10, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 294
    const v26, 0x10008000

    move/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v26, v0

    const v27, 0x7f02017e

    const v28, 0x10409f6

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/high16 v30, 0x1000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v6, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 302
    .end local v10           #editIntent:Landroid/content/Intent;
    :cond_2
    new-instance v22, Landroid/content/Intent;

    const-string v26, "android.intent.action.SEND"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v22, sharingIntent:Landroid/content/Intent;
    const-string v26, "image/png"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string v26, "android.intent.extra.STREAM"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 306
    const/16 v26, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 307
    .local v5, chooserIntent:Landroid/content/Intent;
    const v26, 0x10008000

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v26, v0

    const v27, 0x7f02017f

    const v28, 0x104075b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    const/high16 v30, 0x1000

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-static {v6, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    invoke-virtual/range {v26 .. v29}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 314
    const/16 v26, 0x0

    aget-object v26, p1, v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 315
    const/16 v26, 0x0

    aget-object v26, p1, v26

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 318
    new-instance v7, Landroid/content/Intent;

    const-string v26, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v26

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    .local v7, copyIntent:Landroid/content/Intent;
    const-string v26, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 325
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "file://"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 326
    .local v24, uriString:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v26, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 328
    .local v4, actionIntent:Landroid/content/Intent;
    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 330
    new-instance v3, Landroid/content/Intent;

    const-string v26, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 331
    .local v3, action:Landroid/content/Intent;
    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    .end local v3           #action:Landroid/content/Intent;
    .end local v4           #actionIntent:Landroid/content/Intent;
    .end local v5           #chooserIntent:Landroid/content/Intent;
    .end local v7           #copyIntent:Landroid/content/Intent;
    .end local v8           #deleteIntent:Landroid/content/Intent;
    .end local v14           #imageDirPath:Ljava/lang/String;
    .end local v21           #resolver:Landroid/content/ContentResolver;
    .end local v22           #sharingIntent:Landroid/content/Intent;
    .end local v23           #uri:Landroid/net/Uri;
    .end local v24           #uriString:Ljava/lang/String;
    .end local v25           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_1
    if-eqz v19, :cond_7

    .line 347
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v18, v19

    .line 354
    .end local v13           #imageDir:Ljava/io/File;
    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    :cond_4
    :goto_2
    const/16 v26, 0x0

    aget-object v26, p1, v26

    goto/16 :goto_0

    .line 333
    .end local v15           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    :cond_5
    :try_start_4
    const-string v26, "SaveImageInBackgroundTask"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Fail to create capture image file ("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v26, 0x0

    aget-object v26, p1, v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 336
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_3

    .line 337
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 340
    :catch_0
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v18, v19

    .line 343
    .end local v13           #imageDir:Ljava/io/File;
    .end local v19           #out:Ljava/io/OutputStream;
    .local v9, e:Ljava/lang/Exception;
    .restart local v18       #out:Ljava/io/OutputStream;
    :goto_3
    const/16 v26, 0x0

    :try_start_5
    aget-object v26, p1, v26

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 345
    if-eqz v18, :cond_4

    .line 347
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 348
    :catch_1
    move-exception v9

    .line 349
    const-string v26, "SaveImageInBackgroundTask"

    const-string v27, "IOException"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 348
    .end local v9           #e:Ljava/lang/Exception;
    .end local v15           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v9

    .line 349
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v26, "SaveImageInBackgroundTask"

    const-string v27, "IOException"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v18, v19

    .line 350
    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    goto :goto_2

    .line 345
    .end local v9           #e:Ljava/lang/Exception;
    .end local v13           #imageDir:Ljava/io/File;
    :catchall_0
    move-exception v26

    :goto_4
    if-eqz v18, :cond_6

    .line 347
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 350
    :cond_6
    :goto_5
    throw v26

    .line 348
    :catch_3
    move-exception v9

    .line 349
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v27, "SaveImageInBackgroundTask"

    const-string v28, "IOException"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 345
    .end local v9           #e:Ljava/lang/Exception;
    .end local v15           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    :catchall_1
    move-exception v26

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_4

    .end local v15           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v26

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    goto :goto_4

    .line 340
    .end local v13           #imageDir:Ljava/io/File;
    :catch_4
    move-exception v9

    goto :goto_3

    .end local v15           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    :catch_5
    move-exception v9

    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    goto :goto_3

    .end local v15           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v13       #imageDir:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    :cond_7
    move-object/from16 v15, v16

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v15       #imageFile:Ljava/io/File;
    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    goto/16 :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 13
    .parameter "params"

    .prologue
    .line 359
    sget-boolean v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "SaveImageInBackgroundTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onPostExecute params result = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 361
    .local v8, r:Landroid/content/res/Resources;
    iget v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v9, :cond_2

    .line 363
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const v11, 0x7f0c0044

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 440
    :cond_1
    :goto_0
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 441
    return-void

    .line 367
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v5, launchIntent:Landroid/content/Intent;
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v10, "image/png"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/high16 v9, 0x1000

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v10, 0x7f0c0041

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    const v10, 0x7f0c0042

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v5, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 378
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 379
    .local v6, n:Landroid/app/Notification;
    iget v9, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v9, v9, -0x21

    iput v9, v6, Landroid/app/Notification;->flags:I

    .line 380
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v9, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 387
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "edit_after_screen_capture"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_1

    .line 390
    iget-object v9, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 391
    .local v7, pM:Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 392
    .local v3, editorPackageName:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 393
    .local v2, editorClassName:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v1, directEditIntent:Landroid/content/Intent;
    const-string v9, "%s/%s/"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, imageDirPath:Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v9, "com.sec.feature.spen_usp"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 400
    const/high16 v9, 0x1401

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 401
    const-string v9, "com.sec.spen.flashannotate"

    const-string v10, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v9, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 403
    const-string v9, "isBasedLandscape"

    iget-boolean v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    const-string v9, "savepath"

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    :goto_1
    :try_start_0
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 436
    :catch_0
    move-exception v9

    goto/16 :goto_0

    .line 408
    :cond_3
    const-string v3, "com.sec.android.mimage.photoretouching"

    .line 409
    const-string v2, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    .line 411
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .local v0, cn:Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 414
    const-string v9, "android.intent.action.EDIT"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    const/high16 v9, 0x1000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 417
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v10, "image/png"

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v9, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 419
    const-string v9, "isBasedLandscape"

    iget-boolean v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    const-string v9, "savepath"

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 423
    :cond_4
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    const-string v9, "FilePath"

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    const-string v9, "DirPath"

    invoke-virtual {v1, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v9, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 427
    const-string v9, "isBasedLandscape"

    iget-boolean v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 428
    const-string v9, "savepath"

    iget-object v10, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    iget-object v9, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v10, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 430
    const/high16 v9, 0x1000

    invoke-virtual {v1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 126
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
