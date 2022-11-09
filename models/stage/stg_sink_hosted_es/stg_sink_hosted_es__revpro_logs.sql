
with source as (

    select * from {{ source('raw_sink_hosted_es', 'revpro_logs') }}

),

renamed as (

    select
        id__c,
        oppid__c,
        createdbyid,
        payload__c,
        createddate,
        subsystem,
        created,
        updated,
        delivery,
        message

    from source

)

select * from renamed
