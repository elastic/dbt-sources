
with source as (

    select * from {{ source('raw_netsuite_sa', 'commissionschedule') }}

),

renamed as (

    select
        schedule_id,
        _fivetran_deleted,
        _fivetran_synced,
        author,
        category_0,
        date_created,
        date_deleted,
        description,
        is_inactive,
        manager_,
        name,
        period_type,
        target_amount,
        type_id

    from source

)

select * from renamed
