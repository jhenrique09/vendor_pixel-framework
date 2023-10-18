.class public final Lcom/google/android/systemui/statusbar/StartVoiceReplyData;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/google/android/systemui/statusbar/StartVoiceReplyData;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/systemui/statusbar/StartVoiceReplyData;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "StartVoiceReplyData(sessionToken=0, userMessageContent=null)"

    return-object p0
.end method
