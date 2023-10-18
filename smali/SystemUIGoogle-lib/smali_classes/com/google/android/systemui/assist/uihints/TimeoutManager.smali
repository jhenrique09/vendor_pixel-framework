.class public final Lcom/google/android/systemui/assist/uihints/TimeoutManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$KeepAliveListener;


# static fields
.field public static final SESSION_TIMEOUT_MS:J


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mOnTimeout:Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;

.field public mTimeoutCallback:Lcom/google/android/systemui/assist/uihints/NgaUiController$$ExternalSyntheticLambda4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->SESSION_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TimeoutManager;Ldagger/Lazy;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TimeoutManager;->mOnTimeout:Lcom/google/android/systemui/assist/uihints/TimeoutManager$$ExternalSyntheticLambda0;

    return-void
.end method
