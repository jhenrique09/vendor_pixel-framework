.class public final Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    iget-object v2, v1, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->mBlockingKeys:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v2, v2, v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/gates/TransientGate;->block()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
