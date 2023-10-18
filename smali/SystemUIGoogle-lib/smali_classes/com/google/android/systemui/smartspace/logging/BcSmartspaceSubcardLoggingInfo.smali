.class public final Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public mClickedSubcardIndex:I

.field public mSubcards:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mSubcards:Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    :goto_0
    iget p1, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo$Builder;->mClickedSubcardIndex:I

    iput p1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;

    iget v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    iget v3, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    iget p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BcSmartspaceSubcardLoggingInfo{mSubcards="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mSubcards:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mClickedSubcardIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/systemui/smartspace/logging/BcSmartspaceSubcardLoggingInfo;->mClickedSubcardIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
