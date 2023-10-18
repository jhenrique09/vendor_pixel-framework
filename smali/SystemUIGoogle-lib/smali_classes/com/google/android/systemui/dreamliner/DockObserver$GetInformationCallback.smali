.class final Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$GetInformationCallback;


# instance fields
.field public final mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$GetInformationCallback;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method
