.class public final Lcom/google/android/systemui/assist/uihints/SwipeHandler;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/SwipeHandler;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method public static injectMotionEvent(IIJFFF)V
    .locals 16

    move/from16 v0, p0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v15, 0x0

    move v3, v15

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v1, v3

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/InputDevice;->supportsSource(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v13, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v13, v15

    :goto_1
    const/4 v14, 0x0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p2

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v1 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, v1, v15}, Landroid/hardware/input/InputManagerGlobal;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method
