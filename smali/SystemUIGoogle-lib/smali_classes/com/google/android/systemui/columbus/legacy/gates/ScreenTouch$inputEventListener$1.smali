.class public final Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$inputEventListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$inputEventListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 4

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch$inputEventListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/gates/ScreenTouch;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_4

    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-string v0, "No valid delay for MotionEvent action: "

    invoke-static {v0, p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    const-wide/16 v0, 0xfa

    goto :goto_3

    :cond_4
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/systemui/columbus/legacy/gates/TransientGate;->blockForMillis(J)V

    :cond_5
    return-void
.end method
