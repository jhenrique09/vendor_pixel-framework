.class final Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$GetFanInformationCallback;


# instance fields
.field public final mFanId:B

.field public final mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(BLandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mFanId:B

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetFanInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method
