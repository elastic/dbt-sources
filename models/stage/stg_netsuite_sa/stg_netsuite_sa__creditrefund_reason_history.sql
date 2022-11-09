
with source as (

    select * from {{ source('raw_netsuite_sa', 'creditrefund_reason_history') }}

),

renamed as (

    select
        creditrefund_reason_id,
        _fivetran_deleted,
        _fivetran_synced,
        creditrefund_reason_extid,
        creditrefund_reason_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        type_id,
        partition_date

    from source

)

select * from renamed
