.class public final synthetic Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/IcuDateTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/smartspace/IcuDateTextView;

    sget v0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->$r8$clinit:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/smartspace/IcuDateTextView;->onTimeChanged(Z)V

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/IcuDateTextView;->mTicker:Lcom/google/android/systemui/smartspace/IcuDateTextView$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
