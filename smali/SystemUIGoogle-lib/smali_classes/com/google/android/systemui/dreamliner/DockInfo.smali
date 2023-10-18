.class public final Lcom/google/android/systemui/dreamliner/DockInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final accessoryType:I

.field public final manufacturer:Ljava/lang/String;

.field public final model:Ljava/lang/String;

.field public final serialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    iput-object p2, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    iput p1, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->serialNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockInfo;->accessoryType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
