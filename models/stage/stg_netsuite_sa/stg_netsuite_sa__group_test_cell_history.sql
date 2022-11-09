
with source as (

    select * from {{ source('raw_netsuite_sa', 'group_test_cell_history') }}

),

renamed as (

    select
        crm_group_id,
        test_cell_id,
        _fivetran_deleted,
        _fivetran_synced,
        cumulativepct,
        date_deleted,
        name,
        percentage,
        previouspct,
        partition_date

    from source

)

select * from renamed
