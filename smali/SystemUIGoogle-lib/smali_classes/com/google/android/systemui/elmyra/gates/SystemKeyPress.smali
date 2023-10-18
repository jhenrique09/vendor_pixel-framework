.class public final Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;
.super Lcom/google/android/systemui/elmyra/gates/TransientGate;
.source ""


# instance fields
.field public final mBlockingKeys:[I

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/util/concurrency/DelayableExecutor;ILcom/android/systemui/statusbar/CommandQueue;)V
    .locals 2

    int-to-long v0, p3

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;J)V

    new-instance p2, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;-><init>(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    const p2, 0x7f030050

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mBlockingKeys:[I

    iput-object p4, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-void
.end method


# virtual methods
.method public final onActivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueueCallbacks:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method
